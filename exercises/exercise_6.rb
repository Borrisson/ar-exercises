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
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :store_id, presence: true
  validates :hourly_rate, :inclusion => 40..200
  after_create :random_password_generator

  private

  def random_password_generator
    if self.password == nil
      return unless self.password.nil?
      self.update(password: (0..8).map { (65 + rand(26)).chr }.join)
    end
  end
end

@store1.employees.create(first_name: "Luc", last_name: "Borris", hourly_rate: 40)
@store2.employees.create(first_name: "Caroline", last_name: "Aube", hourly_rate: 60)
@store2.employees.create(first_name: "Melanie", last_name: "Herbert", hourly_rate: 100)

Employees.create(first_name: "Melanie", last_name: "Herbert", hourly_rate: 100, store_id: 1)
Employees.create(first_name: "Cool", last_name: "Guy", hourly_rate: 100, store_id: 1)
