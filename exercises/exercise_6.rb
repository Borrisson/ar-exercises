require_relative "../setup"
require_relative "./exercise_1"
require_relative "./exercise_2"
require_relative "./exercise_3"
require_relative "./exercise_4"
require_relative "./exercise_5"

puts "Exercise 6"
puts "----------"

class Employees < ActiveRecord::Base
  belongs_to :store
end

@store1.employees.create(first_name: "Luc", last_name: "Borris", hourly_rate: 0)
@store2.employees.create(first_name: "Caroline", last_name: "Aube", hourly_rate: 0)
@store2.employees.create(first_name: "Melanie", last_name: "Herbert", hourly_rate: 0)
