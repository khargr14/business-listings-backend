class ContactedSerializer < ActiveModel::Serializer
  # include FastJsonapi::ObjectSerializer
  attributes :id, :business_id, :name, :number, :email, :date, :message
end
