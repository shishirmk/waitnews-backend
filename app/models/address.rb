class Address < ActiveRecord::Base
  belongs_to :location
  attr_accessible :city, :country, :line1, :line2, :state, :zipcode
end
