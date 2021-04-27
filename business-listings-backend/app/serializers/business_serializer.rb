class BusinessSerializer < ActiveModel::Serializer
  # include FastJsonapi::ObjectSerializer
  attributes :id, :name, :number, :email, :industry

  has_many :contacteds
end
