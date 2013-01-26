require 'digest/md5'
  
class JavaCompiler < Compiler
	attr_accessor :code, :className

	def initialize
		super
		@path += "Java/"
		@className = Digest::MD5.hexdigest(Time.now.to_s).gsub(/[0-9]/, '').upcase
		@test_code = 
'import java.util.Scanner;
class LALALA
{	
	public static void main(String[] args) 
    {				    	
    	Scanner input = new Scanner(System.in);
    	int n = input.nextInt();        			
    	int i, sum=0;	
    	for(i=1 ; i<=n ; i++)
    	{
			sum = sum + i; 
			System.out.println(sum);
    	}    	
    }
}
'
	end

	def test
		compile @test_code
		puts run ['5']
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
				input.each do |line|
					i.puts line
				end
				Thread.current['result'] = o.readlines
			end
			sleep 0.5
			t.terminate
			result = t['result']
		end
		return result
	end
end