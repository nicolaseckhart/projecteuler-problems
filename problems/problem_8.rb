class Problem8
  DIGITS = 13
  TITLE = 'PROBLEM 8: Largest product in a series'.freeze
  SOUP = '73167176531330624919225119674426574742355349194934969835203127745063262395783180169848018694788518'\
         '43858615607891129494954595017379583319528532088055111254069874715852386305071569329096329522744304'\
         '35576689664895044524452316173185640309871112172238311362229893423380308135336276614282806444486645'\
         '23874930358907296290491560440772390713810515859307960866701724271218839987979087922749219016997208'\
         '88093776657273330010533678812202354218097512545405947522435258490771167055601360483958644670632441'\
         '57221553975369781797784617406495514929086256932197846862248283972241375657056057490261407972968652'\
         '41453510047482166370484403199890008895243450658541227588666881164271714799244429282308634656748139'\
         '19123162824586178664583591245665294765456828489128831426076900422421902267105562632111110937054421'\
         '75069416589604080719840385096245544436298123098787992724428490918884580156166097919133875499200524'\
         '06368991256071760605886116467109405077541002256983155200055935729725716362695618826704282524836008'\
         '23257530420752963450'.freeze
  DESCRIPTION = 'The four adjacent digits in the 1000-digit number that have the greatest product are 9 × 9 '\
                '× 8 × 9 = 5832. Find the thirteen adjacent digits in the 1000-digit number that have the gr'\
                'eatest product. What is the value of this product?'.freeze

  def solve
    print_problem
    potential_series = soup_as_array.each_with_index.map do |_n, i|
      soup_as_array[i..i + (DIGITS - 1)]
    end
    result = largest_product(potential_series)
    print_result(result)
  end

  def soup_as_array
    SOUP.split('').map(&:to_i)
  end

  def largest_product(potential_series)
    max = 0
    clean_array(potential_series).each do |series|
      series_product = series.inject(:*)
      max = series_product if series_product > max
    end
    max
  end

  def clean_array(array)
    array.map { |a| a unless a.include?(0) }.compact
  end

  def print_problem
    puts TITLE
    puts DESCRIPTION
  end

  def print_result(result)
    puts "\nThe value of the product is #{result}."
  end
end

problem = Problem8.new
problem.solve
