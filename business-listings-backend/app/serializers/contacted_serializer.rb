class ContactedSerializer
  include FastJsonapi::ObjectSerializer
  attributes :business_id, :name, :number, :email, :date, :message
end
