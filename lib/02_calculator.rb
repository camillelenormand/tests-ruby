def add(a,b)
  a + b
end

def subtract(a,b)
  a - b
end

def multiply(a,b)
  a * b
end

def sum(array)
  array == [] ? 0 : array.reduce(:+)
  end

def power(a,b)
  a ** b
end

def factorial(a)
  result = 1
  for i in 1..a
    result *= i
  end
   return result
end




