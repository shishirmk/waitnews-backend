class Place < ActiveRecord::Base
  belongs_to :address
  attr_accessible :name
  has_many :waits
  has_many :averagewaits
  
  searchable do
    text :name
    text :address do
      address.line1 + " " + address.line2 + " " + address.city + " " + address.state
    end
  end
end
