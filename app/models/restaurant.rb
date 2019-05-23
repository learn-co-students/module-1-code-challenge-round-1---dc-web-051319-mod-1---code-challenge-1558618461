class Restaurant
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def customers
    self.reviews.collect{|review| review.customer}.uniq 
  end

  def reviews
    Review.all.select{|review| review.restaurant == self}

  end

  def average_star_rating
    rating = self.reviews.collect{|review| review.rating}
    avg = (rating.inject(0,:+))/ rating.length
    avg
  end

  def longest_review
    self.reviews.max_by{|review| review.content.length}.content
  end

  def self.find_by_name(name)
    self.all.find{|restaurant| restaurant.name == name}
  end


end
