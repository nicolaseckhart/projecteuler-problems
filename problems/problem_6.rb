class Problem6
  MAXIMUM = 100
  TITLE = 'PROBLEM 6: Sum square difference'.freeze
  DESCRIPTION = 'The sum of the squares of the first ten natural numbers is, 12 + 22 + ... + 102 = 385. '\
                'The square of the sum of the first ten natural numbers is, (1 + 2 + ... + 10)2 = 552 = '\
                '3025. Hence the difference between the sum of the squares of the first ten natural numbers '\
                'and the square of the sum is 3025 − 385 = 2640. Find the difference between the sum of the '\
                'squares of the first one hundred natural numbers and the square of the sum.'.freeze

  def solve
    print_problem
    a = (1..MAXIMUM).map { |n| n**2 }.inject(:+)
    b = (1..MAXIMUM).inject(:+)**2
    result = b - a
    print_result(result)
  end

  def print_problem
    puts TITLE
    puts DESCRIPTION
  end

  def print_result(result)
    puts "\nThe difference between the sum of the squares of the first one hundred natural numbers and "\
         "the square of the sum is #{result}."
  end
end

problem = Problem6.new
problem.solve
