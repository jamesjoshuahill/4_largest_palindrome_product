require 'largest_palindrome_product'

describe LargestPalindromeProduct do
  let(:lpp) { LargestPalindromeProduct.new }

  it 'should know if a number is a palindrome' do
    expect(lpp.palindrome?(9009)).to be_true
    expect(lpp.palindrome?(20102)).to be_true
  end

  it 'should know if a number is NOT a palindrome' do
    expect(lpp.palindrome?(123)).to be_false
  end

  it 'should know the largest palindrome of two numbers of a given number of digits' do
    expect(lpp.largest_palindrome(1)).to eq 9
    expect(lpp.largest_palindrome(2)).to eq 9009
  end

end