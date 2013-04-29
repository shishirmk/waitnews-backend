class PlaceSerializer < ActiveModel::Serializer
  attributes :id, :name, :address, :average_wait_time, :latest_wait_time
  #belongs_to :address
  def address
    Address.find_by_id(object.address_id)
  end

  def average_wait_time # average wait method
    avgwait = Averagewait.find_by_id(object.averagewaits.last.id)
    avgwait.present? ? avgwait.average_time : nil
  end

  def latest_wait_time
    latest_wait = Wait.find_by_id(object.waits.last.id)
    latest_wait.present? ? {:wait_time => latest_wait.wait_time, :updated_at => latest_wait.updated_at} : nil
  end
end
