class LargestPalindromeProduct

  def palindrome?(n)
    n == n.to_s.chars.reverse.join.to_i
  end

  def largest_palindrome(digits)
    largest_number = ("9" * digits).to_i
    #iterate through products down from largest_number
    #squared until a palindrome is found
    products = []
    largest_number.downto(largest_number - 10) do |num|
      break if num == 0
      0.upto(100) do |interval|
        break if largest_number - interval == 0
        # puts "#{num} * #{largest_number - interval} = #{num * (largest_number - interval)}"
        products.push(num * (largest_number - interval))
      end
    end

    products.select { |num| palindrome?(num) }.max
  end

end

#simple execution test
puts LargestPalindromeProduct.new.largest_palindrome(3)