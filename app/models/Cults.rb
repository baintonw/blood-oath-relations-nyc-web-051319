

class Cults
  attr_accessor :location
  attr_reader :name, :founding_year, :slogan
    @@all = []

  def initialize(name, location, founding_year, slogan)
    @name = name
    @location = location
    @founding_year = founding_year
    @slogan = slogan
    @@all << self
  end

  def self.all
    @@all
  end

  def recruit_follower(follower)
    Bloodoath.new(follower, self)
    # follower.join_cult(self) unless follower.cults.include?(self)
    # @followers << follower.join_cult(self) unless self.followers.include?(follower)
    #join_cult
  end

  # def meals
  #     Meal.all.select do |meal|
  #       meal.customer == self
  #     end
  #   end

    def bloodoaths
      Bloodoath.all.select do |oath|
        oath.cults == self
      end
    end

  def cult_population

  end



  def self.find_by_name(name)
    self.all.find {|i| i.name == name}
  end

  def self.find_by_location(location)
    self.all.select {|i| i.location == location}
  end

  def self.find_by_founding_year(year)
    self.all.select {|i| i.founding_year == year}
  end

end


#
# class Stock
#   attr_accessor :ticker, :name
#
#   @@all = []
#   def initialize(ticker, name)
#     @ticker = ticker
#     @name = name
#
#     @@all << self
#   end
#
#   def self.all
#     @@all
#   end
#
#   def purchases
#     Purchase.all.select do |purchase|
#       purchase.stock == self
#     end
#   end
#
#   def investors
#     purchases.map do |purchase|
#       purchase.investor
#     end
#   end
# end
#
