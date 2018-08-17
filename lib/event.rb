require 'pry'


class Event
  attr_reader :name, :ages

  def initialize(name, ages)
    @name = name
    @ages = ages
  end

  def max_age
    @ages.max
  end

  def min_age
    @ages.min
  end

  def sum_ages
    sum = 0
    @ages.each do |a|
      sum = sum + a
    end
    return sum
  end

  def average_age
    sum = sum_ages.to_f
    average = (sum / (@ages.count)).round(2)
    return average
  end

  def standard_deviation_age
    mean = average_age
    ages_mod1 = ages_minus_average(mean)
    ages_mod2 = square_each_modified_age(ages_mod1)
    summed_modified_ages = sum_squared_mod_ages(ages_mod2)
    mean_modified_age = average_modified_ages(summed_modified_ages)
    std = square_root(mean_modified_age)
    return std
  end

  def ages_minus_average(mean)
    @ages.map do |age|
      age - mean
    end
  end

  def square_each_modified_age(ages_mod1)
    ages_mod1.map do |mod1|
      mod1 ** 2
    end
  end

  def sum_squared_mod_ages(ages_mod2)
    sum = 0
    ages_mod2.each do |mod2|
      sum = sum + mod2
    end
    return sum
  end

  def average_modified_ages(summed_modified_ages)
    summed_modified_ages / @ages.count
  end

  def square_root(value)
    Math.sqrt(value).round(2)
  end
end
