class PlaceSerializer < ActiveModel::Serializer
  attributes :id, :name, :address, :averagewait
  #belongs_to :address
  def address
    Address.find_by_id(object.address_id)
  end

  def averagewait # average wait method
    Averagewait.find_by_id(object.averagewaits.last.id)
  end
end
