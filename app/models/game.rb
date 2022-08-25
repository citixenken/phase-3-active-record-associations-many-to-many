class Game < ActiveRecord::Base
  # when we use the has_many macro, Active Record generates an instance method 
  # #reviews that we can call on a Game instance to access all the associated reviews
  has_many :reviews # 1-* relationship
  has_many :users, through: :reviews # *-* relationship
end
