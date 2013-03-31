class Place < ActiveRecord::Base
  belongs_to :address
  attr_accessible :name, :address_id
  has_many :waits
  has_many :averagewaits
  
  searchable do
    text :name
    text :address do
      temp = address.line1 + " "
      temp += address.line2 + " " if address.line2
      temp += address.city + " "
      temp += address.state
      temp
    end
  end
end
