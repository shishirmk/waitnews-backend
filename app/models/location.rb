class Location < ActiveRecord::Base
  has_one :address
  attr_accessible :lat, :long
end
