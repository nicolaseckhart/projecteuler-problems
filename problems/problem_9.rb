class Problem9
  MAXIMUM = 1000
  TITLE = 'PROBLEM 9: Special Pythagorean triplet'.freeze
  DESCRIPTION = 'A Pythagorean triplet is a set of three natural numbers, a < b < c, for which, a2 + b2 = c2. '\
                'For example, 32 + 42 = 9 + 16 = 25 = 52. There exists exactly one Pythagorean triplet for whi'\
                'ch a + b + c = 1000. Find the product abc.'.freeze

  def solve
    print_problem
    (1..MAXIMUM).each do |a|
      (a+1..MAXIMUM).each do |b|
        c = MAXIMUM - a - b
        next unless a ** 2 + b ** 2 == c ** 2
        print_result(a * b * c)
      end
    end
  end

  def print_problem
    puts TITLE
    puts DESCRIPTION
  end

  def print_result(result)
    puts "\nThe product abc is #{result}."
  end
end

problem = Problem9.new
problem.solve
