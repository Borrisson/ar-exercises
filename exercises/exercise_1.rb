require_relative "../setup"

puts "Exercise 1"
puts "----------"
# ApplicationRecord for rails 5? using rails 5.1.4?
class Store < ActiveRecord::Base
  has_many :employees
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, :inclusion => 0..Float::INFINITY
  validate :has_atleast_one_gender_apperal

  def has_atleast_one_gender_apperal
    if !mens_apparel && !womens_apparel
      errors.add(:mens_apparel, "Must have atleast one true boolean for either gender apparel")
      errors.add(:womens_apparel, "Must have atleast one true boolean for either gender apparel")
    end
  end
end

Store.create(name: "Burnaby", annual_revenue: 300000, mens_apparel: true, womens_apparel: true)
Store.create(name: "Richmond", annual_revenue: 1260000, mens_apparel: false, womens_apparel: true)
Store.create(name: "Gastown", annual_revenue: 190000, mens_apparel: true, womens_apparel: false)

puts Store.count
