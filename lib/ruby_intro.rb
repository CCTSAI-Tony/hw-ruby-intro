# When done, submit this entire file to the autograder.

# Part 1

def sum(arr)
  arr.inject(0, :+)

end

def max_2_sum(arr)
  sum(arr.sort.last(2))
  
end

def sum_to_n?(arr, n)
  return false if arr.empty? 
  arr.combination(2).any? {|a, b| a + b == n }
  
end

# Part 2

def hello(name)
  return "Hello, #{name}"
  
end

def starts_with_consonant?(s)
    if /^[^aeiou\W]/i.match(s) == nil #put 2nd ^ at the beginning before [aeiou\W] if for the 1st character, 1st ^ is for not
        return false
    else
        return true
    end
  
end

def binary_multiple_of_4?(s)
    is = s.to_i
    if s == "0"
      return true
    elsif /[a-zA-Z^$2-9*]/.match(s)
      return false
    else
      if /^[10]*00$/.match(s) && is % 2 == 0
        return true
      else
        return false
      end
    end
  
end

# Part 3

class BookInStock
  
  attr_accessor :isbn
  attr_accessor :price
  

  def initialize(isbn, price)
    @isbn = isbn
    @price = Float(price)
    raise ArgumentError if isbn.match(/^$/) || price <=0
  end

  def price_as_string
    "$#{format('%.2f', price)}"
  end


end
