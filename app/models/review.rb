class Review

  attr_reader :restaurant, :customer
  attr_accessor :rating, :content
  @@all = []

  def initialize(customer,restaurant,rating,content)
    @customer = customer
    @restaurant = restaurant
    @rating = rating
    @content = content
    @@all << self
  end

  def customer
    @customer
  end

  def restaurant
    @restaurant
  end

  def self.all
    @@all
  end

  def rating
     @rating
  end

  def content
    @content
  end

end
