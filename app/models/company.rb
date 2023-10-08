class Company < ApplicationRecord
  belongs_to :user
  has_many :clients, dependent: :destroy
  has_many :products, through: :clients
  has_many :pagos, dependent: :destroy
  has_many :inversions, dependent: :destroy

  # validaciones

  validates :name_company, presence: true
  validates :name_company, uniqueness: true

  scope :having_dob_between, ->(start_date, end_date) { where(dob: start_date..end_date) }
end
