class Problem1
  MAXIMUM = 1000
  TITLE = 'PROBLEM 1: Multiples of 3 and 5'.freeze
  DESCRIPTION = 'If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. '\
                'The sum of these multiples is 23. Find the sum of all the multiples of 3 or 5 below 1000.'.freeze

  def solve
    print_problem
    values = (1..MAXIMUM).map { |i| i % 3 == 0 || i % 5 == 0 ? i : next }.compact
    sum = values.inject(:+)
    print_result(sum)
  end

  def print_problem
    puts TITLE
    puts DESCRIPTION
  end

  def print_result(result)
    puts "\nThe sum of all mutiples is #{result}."
  end
end

problem = Problem1.new
problem.solve
