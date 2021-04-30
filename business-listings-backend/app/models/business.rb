class Business < ApplicationRecord
    has_many :contacteds
    validates : :name, :number, :email, :industry, presence :true
end
