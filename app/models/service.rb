class Service < ActiveRecord::Base

  belongs_to :service_type

  validates :title, :price, :description, presence: true
  validates :title, uniqueness: true
end