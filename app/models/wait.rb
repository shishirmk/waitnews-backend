class Wait < ActiveRecord::Base
  belongs_to :user
  belongs_to :place
  attr_accessible :wait_time
end
