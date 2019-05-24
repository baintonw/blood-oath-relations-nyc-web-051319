class Bloodoath

  attr_accessor :cults, :followers, :initiation_date, :name

  @@all = []

  def initialize(follower, cult, initiation_date="2019-05-17")
    @follower = follower
    @cult = cult
    @initiation_date = initiation_date

    @@all << self
  end

  def self.all
    @@all
  end

#
end

#require_relative ''./followers.rb'
#require_relative ''./cults.rb'


# class Purchase
#   attr_reader :price, :quantity, :stock, :investor
#
#   @@all = []
#
#   def initialize(price, quantity, stock, investor)
#     @price = price
#     @quantity = quantity
#     @stock = stock
#     @investor = investor
#
#     @@all << self
#   end
#
#   def self.all
#     @@all
#   end
# end
