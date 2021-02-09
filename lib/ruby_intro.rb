# When done, submit this entire file to the autograder.

# Part 1
# sum all elements
def sum arr
   if arr.empty?
  return 0
 else
     return arr.sum
 end
end

# sum the two max elements
def max_2_sum arr
   if arr.empty?
  return 0
 elsif arr.size == 1
  return arr[0]
 else
     max1 = arr[0]
     max2 = arr[1]
     for i in (0...arr.size)
      if arr[i]>=max1
       max1 = arr[i]
       idx = i
      end 
     end
     
     for j in (0...arr.size)
      if arr[j]>max2
          if j != idx
          max2 = arr[j]
       end
      end 
     end     
     
     return max1 + max2
 end
end

# check whether any two elements sum equal to n
def sum_to_n? arr, n
   if arr.empty? or arr.size==1
  return false
 else
     for i in (0...arr.size)
         for j in (i+1...arr.size)
             sum = arr[i] + arr[j]
             if sum == n
                 return true
             end
         end
     end
     return false
 end
end


# Part 2
# Hello to name
def hello(name)
   if name
  return "Hello, #{name}"
 end
end

# determine that a string starts with a consonant 
def starts_with_consonant? s
   if s.empty?
  return false
 end 
 
 if s[0].match(/[a-zA-Z]/)
  if s[0].match(/[aeiouAEIOU]/)
   return false
  end
 else
  return false
 end
 return true
end

# determine a binary that is a multiple of 4
def binary_multiple_of_4? s
 if s.empty? 
  return false
 end
 
 if s[0].match(/[01]/)
  if s.to_i(2)%4==0
   return true
  else
   return false
  end
 else
  return false
 end
end


# Part 3
# define a class
class BookInStock
 def initialize(isbn, price)
  if isbn.empty? or price<=0
   raise ArgumentError, "Illegal argument" 
  else
   @book_isbn = isbn
   @book_price = price
     end
 end
 #getter
 def isbn
  @book_isbn
 end
 def price
  @book_price
 end
 # setter
 def isbn=(value)
  @book_isbn = value
 end
 def price=(value)
  @book_price = value
 end
  # print book price
 def price_as_string
  out = "$%0.2f" % [@book_price]
 end
end