class ProblemX
  TITLE = 'PROBLEM X: Lorem ipsum dolor sit amet'.freeze
  DESCRIPTION = 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed commodo vitae eros non egestas.'.freeze

  def solve
    print_problem
    # LOGIC HERE
    result = 'foobar'
    print_result(result)
  end

  def print_problem
    puts TITLE
    puts DESCRIPTION
  end

  def print_result(result)
    puts "\nThe sum of all mutiples is #{result}."
  end
end

problem = ProblemX.new
problem.solve
