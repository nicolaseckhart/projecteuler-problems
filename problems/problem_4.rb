class Problem4
  MINIMUM = 100
  MAXIMUM = 999
  TITLE = 'PROBLEM 4: Largest palindrome product'.freeze
  DESCRIPTION = 'A palindromic number reads the same both ways. The largest palindrome made from the '\
                'product of two 2-digit numbers is 9009 = 91 × 99. Find the largest palindrome made '\
                'from the product of two 3-digit numbers.'.freeze

  def solve
    print_problem
    palindromes = []
    MAXIMUM.downto(MINIMUM) do |i|
      i.downto(MINIMUM) do |j|
        product = i * j
        palindromes << product if palindrome?(product)
      end
    end
    print_result(palindromes.max)
  end

  def palindrome?(number)
    number == number.to_s.split('').reverse.join.to_i
  end

  def print_problem
    puts TITLE
    puts DESCRIPTION
  end

  def print_result(result)
    puts "\nThe largest palindrome made from the product of two 3-digit numbers is #{result}"
  end
end

problem = Problem4.new
problem.solve
