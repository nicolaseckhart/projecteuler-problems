require 'prime'

class Problem7
  PRIME = 10_001
  TITLE = 'PROBLEM 7: 10001st prime'.freeze
  DESCRIPTION = 'By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that '\
                'the 6th prime is 13. What is the 10 001st prime number?'.freeze

  def solve
    print_problem
    result = Prime.take(PRIME).last
    print_result(result)
  end

  def print_problem
    puts TITLE
    puts DESCRIPTION
  end

  def print_result(result)
    puts "\nThe #{PRIME}st prime is #{result}."
  end
end

problem = Problem7.new
problem.solve
