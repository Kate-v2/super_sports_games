require 'pry'

ages = [24, 30, 18, 20, 41]

def find_standard_deviation(ages)
  count = ages.count
  sum = sum_ages(ages)
  av_age = average_age(sum, count)
  adjusted_ages = subtract_average(ages, av_age)
  squares = square_adjusted_ages(adjusted_ages)
  sum_squares = sum_of_squares(squares)
  average_squares = average_of_squares(sum_squares, count)
  square_root(average_squares)
end

# Sum all of the ages
def sum_ages(ages)
  sum = 0
  ages.each do |age|
    sum += age
  end
  return sum
end

# Average the integers
def average_age(sum, count)
  sum / count
end

# Subtract the average age from each age
def subtract_average(ages, av_age)
  adjusted_ages = []
  ages.each do |age|
    adjusted_ages << age - av_age
  end
  return adjusted_ages
end

# Square each adjusted age
def square_adjusted_ages(adjusted_ages)
  squares = []
  adjusted_ages.each do |age|
    squares << age ** 2
  end
  return squares
end

# Sum the squares of the adjusted ages
def sum_of_squares(squares)
  sum = 0
  squares.each do |square|
    sum = sum + square
  end
  return sum
end

# Divide the sum of squares by the count of ages
def average_of_squares(sum, count)
  sum / count
end

# Take the square root of average of squares
def square_root(average_squares)
  Math.sqrt(average_squares)
end

p find_standard_deviation(ages)
