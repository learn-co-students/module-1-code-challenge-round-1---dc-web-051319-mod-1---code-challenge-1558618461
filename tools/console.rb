require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

customer1 = Customer.new("john","doe")
customer2 = Customer.new("jane","boe")
customer3 = Customer.new("bob","bobbs")
customer4 = Customer.new("michael","jackson")
customer5 = Customer.new("michael","jackson")
customer6 = Customer.new("michael","jack")


restaurant1 = Restaurant.new("Red Lobster")
restaurant2 = Restaurant.new("Outback")
restaurant3 = Restaurant.new("Olive Garden")
restaurant4 = Restaurant.new("Chilis")
restaurant5 = Restaurant.new("Red Lobster")

review1 = Review.new(customer1,restaurant1, 4, "good")
review2 = Review.new(customer2,restaurant2, 2, "bad")
review3 = Review.new(customer3,restaurant3, 3, "awful")
review4 = Review.new(customer4,restaurant4, 5, "it was excellent")
review5 = Review.new(customer4,restaurant1, 3, "loved it")
review6 = Review.new(customer2,restaurant2, 4, "never again")
review7 = Review.new(customer2,restaurant3, 3, "why")
review8 = Review.new(customer1,restaurant4, 5, "it was excellent and good")








# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
