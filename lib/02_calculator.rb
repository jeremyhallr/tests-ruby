def add(a, b)
  return a + b
end

def subtract(a, b)
  return a - b
end

def sum(array)
  return array.inject(0){|sum,x| sum + x }
end

def multiply(a, b)
  return a * b
end

def power(n, power)
  return n ** power
end

def factorial(n)
  if n == 0
    return 1
  else
    p n * factorial(n - 1)
  end
end