class Averagewait < ActiveRecord::Base
  belongs_to :place
  attr_accessible :average_time, :day, :dow, :hour, :minute, :month, :year
end
