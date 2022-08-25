class User < ActiveRecord::Base
    # Active Record won't know how to go through the reviews table
    # until you create the has_many :reviews association => order matters!
    has_many :reviews
    has_many :games, through: :reviews
end
