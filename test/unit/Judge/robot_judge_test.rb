require "test/unit"

class RobotJudgeTest < Test::Unit::TestCase
	@test_code = 'import java.util.Scanner;
	class LALALA
		{	
			public static void main(String[] args) 
			{
				for(int i=0 ; i<9999 ; i++)
					{
						System.out.println(i);
					}
				}
			}
			'
	#
	def test_judge_java
		question = RobotQuestion.find 0
		judge = RobotJudge.new question, @test_code, 'Java'
	end
end