require_relative '../helpers/stopwatch'

class Problem14
  TITLE = 'PROBLEM 14: Longest Collatz sequence'.freeze
  DESCRIPTION = "The following iterative sequence is defined for the set of positive integers:\n\nn → n/2 "\
                "(n is even)\nn → 3n + 1 (n is odd)\n\nUsing the rule above and starting with 13, we gener"\
                "ate the following sequence:\n\n13 → 40 → 20 → 10 → 5 → 16 → 8 → 4 → 2 → 1\nIt can be seen"\
                ' that this sequence (starting at 13 and finishing at 1) contains 10 terms. Although it ha'\
                's not been proved yet (Collatz Problem), it is thought that all starting numbers finish a'\
                "t 1.\n\nWhich starting number, under one million, produces the longest chain?\n\nNOTE: On"\
                'ce the chain starts the terms are allowed to go above one million.'.freeze

  def initialize
    @longest_chain_number = 0
    @last_amount_of_steps = 0
  end

  def solve
    print_problem

    (1..999_999).each do |number|
      number_of_steps = collatz_sequence_length(number)
      if number_of_steps > @last_amount_of_steps
        @longest_chain_number = number
        @last_amount_of_steps = number_of_steps
      end
    end

    print_result(@longest_chain_number)
  end

  def collatz_sequence_length(number)
    steps = 0
    while number > 1
      number = next_number(number)
      steps += 1
    end
    steps
  end

  def next_number(number)
    return number / 2 if number.even?
    (3 * number) + 1
  end

  def print_problem
    puts TITLE
    puts DESCRIPTION
  end

  def print_result(result)
    puts "\nThe starting number, under one million, that produces the longest chain is #{result}."
  end
end

problem = Problem14.new
problem.solve
