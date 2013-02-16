require 'digest/md5'
require 'Open3'

class JavaCompiler < Compiler
	attr_accessor :code, :className

	def initialize
		super
		@path += "Java/"
		@className = Digest::MD5.hexdigest(Time.now.to_s).gsub(/[0-9]/, '').upcase
	end

	def test
		compile @test_code
		puts run ['5']
	end	

	def robot_test
		compile @test_code
		return run_with_robot 'lib/Robots/BootCamp1.rb'
	end

	def changeClassName code
		if code.index('public class') == nil
			code['class'] = 'public class'
		end		
		code = code.gsub(/class .*/, 'class ' + @className)
		return code
	end

	def compile code
		code = changeClassName code		
		File.open(path + @className+'.java', 'w') {|f| f.write(code) }
		output = system('javac ' + path + @className + '.java')
	end	

	def run input
		result = '!'
		Open3.popen3('java -classpath ' + Dir.pwd + '/' + @path + ' ' + @className) do | istream, ostream, error, t|
			t = Thread.new(istream, ostream, t, input) do |i,o,t,input|
				input.split('\n').each do |line|					
					i.puts line
				end
				Thread.current['result'] = o.readlines
			end
			sleep 0.5
			t.terminate
			result = t['result'].join
		end
		return result
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
		result = []
		@pipe = IO.popen('ruby ' + robot, 'w+')
		java = IO.popen('java -classpath ' + Dir.pwd + '/' + @path + ' ' + @className)
		t = Thread.new {
			Thread.current['result'] = []
			while 1==1
				response = java.gets
				if response.nil?
					break
				end
				robot_message = robot_talk response.chomp
				Thread.current['result'] << robot_message
			end
		}
		sleep 3
		t.terminate
		java.close
		@pipe.close
		if t['result'].last == nil
			t['result'].pop
		end
		return t['result']
	end
end






