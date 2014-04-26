class Service < ActiveRecord::Base

  belongs_to :service_type

  validates :title, :price, presence: true
  validates :title, uniqueness: true
end