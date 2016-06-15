require 'prime'

class Problem3
  NUMBER = 600_851_475_143
  TITLE = 'PROBLEM 3: Largest prime factor'.freeze
  DESCRIPTION = 'The prime factors of 13195 are 5, 7, 13 and 29. What is the largest prime factor of the '\
                'number 600851475143 ?'.freeze

  def solve
    print_problem
    result = prime_factorization(NUMBER).max
    print_result(result)
  end

  def prime_factorization(n)
    Prime.prime_division(n).map(&:first)
  end

  def print_problem
    puts TITLE
    puts DESCRIPTION
  end

  def print_result(result)
    puts "\nThe largest prime factor of #{NUMBER} is #{result}."
  end
end

problem = Problem3.new
problem.solve
