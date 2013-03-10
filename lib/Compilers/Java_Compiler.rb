require 'digest/md5'
require 'Open3'

class JavaCompiler < Compiler
	attr_accessor :code, :className

	def initialize
		super
		@path += "Java/"
		@className = Digest::MD5.hexdigest(Time.now.to_s).gsub(/[0-9]/, '').upcase
	end	

	def changeClassName code
		if code.index('public class') == nil
			code['class'] = 'public class'
		end		
		code = code.gsub(/class .*{/, 'class ' + @className + " {\n")
		code = code.gsub(/class .*\n.*{/, 'class ' + @className + " {\n")
		return code
	end

	def compile code
		code = changeClassName(code)
		File.open(path + @className+'.java', 'w') {|f| f.write(code) }
		compiler_in, compiler_out, compiler_err = Open3.popen3('javac ' + path + @className + '.java')
		output = compiler_err.readlines	
		return output if output != nil
		return true
	end

	def robot_talk message		
		@pipe.puts message
		response = @pipe.gets
		if response.nil?
			return nil
		end
		return response.chomp
	end

	def run_with_robot robot
		@result = []
		robot_in, robot_out, robot_err, robot_thr = Open3.popen3('ruby ' + robot)
		java_in, java_out, java_err, java_thr = Open3.popen3('java -classpath ' + Dir.pwd + '/' + @path + ' ' + @className)
		t = Thread.new(robot_in, robot_out, robot_thr, robot_err, java_in, java_out, java_thr, java_err) do |r_in, r_out, r_thr, r_err, j_in, j_out, j_thr, j_err|
			j_in.sync = false
			while 1==1
				j_line = j_out.gets
				r_in.puts j_line if j_line != nil
				r_message = r_out.gets.chomp
				@result << j_line
				if r_message.length > 0
					j_in.puts r_message
					@result.pop
					@result << r_message
				end
			end
		end		
		sleep 1

		Process.kill("HUP", robot_thr.pid) if robot_thr.alive?
		# t.terminate
		return @result
	end

	def run input
		result = '!'
		Open3.popen3('java -classpath ' + Dir.pwd + '/' + @path + ' ' + @className) do | istream, ostream, error, xhr|
			t = Thread.new(istream, ostream, t, input) do |i,o,t,input|
				input.split('\n').each do |line|
					i.puts line
				end
				Thread.current['result'] = o.readlines
			end
			sleep 1			
			result = t['result']
			Process.kill("HUP", xhr.pid) if xhr.alive?
		end
		result = 'Run/Compiler Error!' if result == nil
		puts result
		return result
	end
end






