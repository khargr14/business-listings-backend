class BusinessSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :number, :email, :industry
end
