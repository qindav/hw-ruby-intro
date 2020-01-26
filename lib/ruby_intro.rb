# Part 1
def sum arr
  return arr.sum
end

def max_2_sum arr
  return arr.sort.reverse.take(2).sum
end

def sum_to_n? arr, n
  if arr.length < 2
    return false
  end
  
  a = arr.sort
  l_p = 0
  r_p = arr.length - 1
  loop do
    if l_p >= r_p
      return false
    end

    if a[l_p] + a[r_p] == n
      return true
    elsif a[l_p] + a[r_p] < n
      l_p += 1
    else
      r_p -= 1
    end
  end
end

# Part 2
def hello(name)
  "Hello, " + name
end

def starts_with_consonant? s
  if s.length == 0 
    return false 
  end
  chara = s[0].downcase
  "bcdfghjklmnpqrstvwxyz".include?chara
end

def binary_multiple_of_4? s
  # 0 divisible by 4
  if s == "0"
    return true
  end
  # Only contain 0 or 1, length of 3, first 2 digits are 00
  if (s =~ /\A[01]+\z/) && s.length >= 3 && s.reverse[0,2] == "00"
    return true 
  end

  false
end

# Part 3
class BookInStock
  def isbn
    @ISBN
  end
  def price
    @price
  end
  
  def initialize(isbn, price)
    self.isbn = isbn
    self.price = price
  end

  def isbn= i
    if i.length == 0
      raise ArgumentError
    end
    @ISBN = i
  end
  def price= p
    if p <= 0
      raise ArgumentError
    end  
    @price = p
  end
  
  def price_as_string
    "$%.2f" % @price
  end
end
