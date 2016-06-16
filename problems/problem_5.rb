class Problem5
  DIVISIBLE_MAX = 20
  TITLE = 'PROBLEM 5: Smallest multiple'.freeze
  DESCRIPTION = '2520 is the smallest number that can be divided by each of the numbers from 1 to 10 '\
                'without any remainder. What is the smallest positive number that is evenly divisible '\
                'by all of the numbers from 1 to 20?'.freeze

  def solve
    print_problem
    print_result((1..DIVISIBLE_MAX).reduce(:lcm))
  end

  def print_problem
    puts TITLE
    puts DESCRIPTION
  end

  def print_result(result)
    puts "\nThe smallest positive number that is evenly divisible by all of the numbers from 1 to 20 is #{result}."
  end
end

problem = Problem5.new
problem.solve
