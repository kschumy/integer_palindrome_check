# Returns true if the input positive integer number forms a palindrome. Returns false otherwise.
def is_palindrome(number)
  return false if number.class != Integer || number < 0
  num_of_digits = get_num_of_digits(number)
  has_palindrome = true
  (1..num_of_digits / 2).each do |digit|
    left_side_digit = (number / 10 ** (num_of_digits - digit)) % 10
    right_side_digit = (number % 10 ** digit) / (10 ** (digit - 1))
    has_palindrome = left_side_digit == right_side_digit
    break if !has_palindrome
  end
  return has_palindrome
end

def get_num_of_digits(number)
  x = 1
  x += 1 while number / 10 ** x != 0
  return x
end
