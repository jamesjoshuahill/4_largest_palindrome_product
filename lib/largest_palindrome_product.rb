class LargestPalindromeProduct

  def palindrome?(n)
    n == n.to_s.chars.reverse.join.to_i
  end

  def largest_palindrome(digits)
    largest_number = ("9" * digits).to_i
    largest_palindrome = 0

    largest_number.downto(1) do |a|
      largest_number.downto(a) do |b|
        product = a * b
        break if product < largest_palindrome
        if palindrome?(product)
          largest_palindrome = product if product > largest_palindrome
          break
        end
      end
      break if ((a * largest_number) < largest_palindrome)
    end
    largest_palindrome
  end

end

#simple execution test
puts LargestPalindromeProduct.new.largest_palindrome(3)