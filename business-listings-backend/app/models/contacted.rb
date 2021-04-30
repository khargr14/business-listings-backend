class Contacted < ApplicationRecord
    belongs_to :business
    validates :name, :number, :email, :date, :message, presence: true
end
