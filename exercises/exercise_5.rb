require_relative "../setup"
require_relative "./exercise_1"
require_relative "./exercise_2"
require_relative "./exercise_3"
require_relative "./exercise_4"

puts "Exercise 5"
puts "----------"

puts "Sum", Store.all.sum(:annual_revenue)
puts "Avg", Store.all.average(:annual_revenue)
puts "# of stores who make more that $1M in annual sales", Store.where("annual_revenue > 1000000").size
