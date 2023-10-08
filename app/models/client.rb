class Client < ApplicationRecord
  belongs_to :company
  has_many :products, dependent: :destroy

  # rut unico
end
