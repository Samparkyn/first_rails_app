class Artist < ActiveRecord::Base
  has_many :albums
  has_many :gigs
  has_many :venues, through: :gigs
  #the above line is just a method that takes in 2 arguments. 1.venues & 2. is a hash {through: :gigs} with through as the key and gigs as the value
end
