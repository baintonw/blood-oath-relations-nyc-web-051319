

class Followers
  attr_accessor :name, :age, :motto
  @@all = []

  def initialize(name, age, motto)
    @name = name
    @age = age
    @motto = motto

    @@all << self
  end

  def self.all
    @@all
  end

  def join_cult(cult)
    Bloodoath.new(self, cult)
  end

  def self.of_a_certain_age(number)
    self.all.select do |follower|
      follower.age == number
    end
  end
end

#
#
# class Investor
#   attr_accessor :name, :net_worth
#
#   @@all = []
#
#   def initialize(name, net_worth)
#     @name = name
#     @net_worth = net_worth
#
#     @@all << self
#   end
#
#   def self.all
#     @@all
#   end
#
#
#   def buy_stock(stock, price, quantity)
#     Purchase.new(price, quantity, stock, self)
#   end
#
#   def purchases
#     Purchase.all.select do |purchase|
#       purchase.investor == self
#     end
#   end
#
#   def stocks
#     purchases.map do |purchase|
#       purchase.stock
#     end
#   end

# end
