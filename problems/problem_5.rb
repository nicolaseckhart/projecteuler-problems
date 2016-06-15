class Problem5
  DIVISIBLE_MAX = 18
  TITLE = 'PROBLEM 5: Smallest multiple'.freeze
  DESCRIPTION = '2520 is the smallest number that can be divided by each of the numbers from 1 to 10 '\
                'without any remainder. What is the smallest positive number that is evenly divisible '\
                'by all of the numbers from 1 to 20?'.freeze

  # [WIP] pretty shitty code so far, but it's the fastest way i've found. (ca. 20 seconds :P)
  def solve
    print_problem
    result = nil
    DIVISIBLE_MAX.step do |i|
      next unless i % 2 == 0
      next unless i % 3 == 0
      next unless i % 4 == 0
      next unless i % 5 == 0
      next unless i % 6 == 0
      next unless i % 7 == 0
      next unless i % 8 == 0
      next unless i % 9 == 0
      next unless i % 10 == 0
      next unless i % 11 == 0
      next unless i % 12 == 0
      next unless i % 13 == 0
      next unless i % 14 == 0
      next unless i % 15 == 0
      next unless i % 16 == 0
      next unless i % 17 == 0
      next unless i % 18 == 0
      next unless i % 19 == 0
      next unless i % 20 == 0
      result = i
      break
    end
    print_result(result)
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
