require 'test/unit'

class JavaTest < Test::Unit::TestCase	
	def test_run		
		compiler = JavaCompiler.new
		assert compiler.compile(code)
		assert compiler.run [5, 5, 5]
	end	

	def test_loop_run
		compiler = JavaCompiler.new
		assert compiler.compile(code)
		assert compiler.run [5, 5, 5]
	end

	def test_robot
		compiler = JavaCompiler.new
		assert compiler.compile(code)
		assert compiler.run_with_robot Dir.pwd + '/lib/Robots/BootCamp1.rb'		
	end

	def test_robot_with_bad_code
		compiler = JavaCompiler.new
		output = compiler.compile(bad_code)
		assert output != true
	end

	def code
		'import java.util.Scanner;
		class Test
		{
			public static void main(String[] args) {
				Scanner input = new Scanner(System.in);
				for(int i=0 ; i<10000 ; i++){
					System.out.println(i);
					input.nextInt();
				}
			}
		}'
	end

	def bad_code
		'import java.util.Scanner;
		class Test{	
			public static void main(String[] args) {
				Scanner input = new Scanner(System.in);
				for(int i=0 ; i10000 ; i++){
					System.out.println(i);
					input.nextInt();
				}
			}
		}'
	end

	def loop_code
	'import java.util.Scanner;
		class Test{	
			public static void main(String[] args) {
				Scanner input = new Scanner(System.in);
				for(int i=0 ;  ; i++){
					System.out.println(i);
					input.nextInt();
				}
			}
		}'
	end
end







