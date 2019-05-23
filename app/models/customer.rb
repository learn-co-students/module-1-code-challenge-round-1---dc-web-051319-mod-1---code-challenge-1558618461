class Customer
  attr_reader :first_name, :last_name
  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def self.all
    @@all
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def add_review(restaurant,rating,content)
    Review.new(self,restaurant,rating,content)
  end

  def num_reviews
    x = Review.all.select{|review| review.customer == self}
    x.length

  end

  def restaurants
    x = Review.all.select{|review| review.customer == self}
    x.collect{|review| review.restaurant}.uniq
  end

  def self.find_by_name(name)
    name = name.split(' ')
    x = self.all.find{|full_name| full_name.first_name == name[0] && full_name.last_name == name[1]}

  end

  def self.find_all_by_first_name(name)
    self.all.select{|full_name| full_name.first_name == name}
  end

  def self.all_names
    self.all.collect{|name| "#{name.first_name} #{name.last_name}"}

  end
end
