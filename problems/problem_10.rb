require 'prime'

class Problem10
  MAXIMUM = 2_000_000
  TITLE = 'PROBLEM 10: Summation of primes'.freeze
  DESCRIPTION = 'The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17. Find the sum of all the primes '\
                'below two million.'.freeze

  def solve
    print_problem
    primes = []
    Prime.each(MAXIMUM) do |prime|
      primes << prime
    end
    print_result(primes.inject(:+))
  end

  def print_problem
    puts TITLE
    puts DESCRIPTION
  end

  def print_result(result)
    puts "\nThe sum of the primes in question is #{result}."
  end
end

problem = Problem10.new
problem.solve
