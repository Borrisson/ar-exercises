require_relative "../setup"

puts "Exercise 1"
puts "----------"
# ApplicationRecord for rails 5? using rails 5.1.4?
class Store < ActiveRecord::Base
  has_many :employees
end

Store.create(name: "Burnaby", annual_revenue: 300000, mens_apparel: true, womens_apparel: true)
Store.create(name: "Richmond", annual_revenue: 1260000, mens_apparel: false, womens_apparel: true)
Store.create(name: "Gastown", annual_revenue: 190000, mens_apparel: true, womens_apparel: false)

puts Store.count
