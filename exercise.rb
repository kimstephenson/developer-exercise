class Exercise

  # Assume that "str" is a sequence of words separated by spaces.
  # Return a string in which every word in "str" that exceeds 4 characters is replaced with "marklar".
  # If the word being replaced has a capital first letter, it should instead be replaced with "Marklar".
  def self.marklar(str)
    str.gsub(/\w{5,}/) do |substr|
      substr == substr.capitalize ? "Marklar" : "marklar"
    end
  end

  # Return the sum of all even numbers in the Fibonacci sequence, up to
  # the "nth" term in the sequence
  # eg. the Fibonacci sequence up to 6 terms is (1, 1, 2, 3, 5, 8),
  # and the sum of its even numbers is (2 + 8) = 10
  def self.even_fibonacci(nth)
    even_sum = 0
    sequence = [0, 1]
    (nth-1).times do
      next_num = sequence[-1] + sequence[-2]
      even_sum += next_num if next_num.even?
      sequence << next_num
    end
    even_sum
  end

end
