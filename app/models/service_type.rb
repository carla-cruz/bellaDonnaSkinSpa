class ServiceType < ActiveRecord::Base
  has_many :services
  accepts_nested_attributes_for :services
  validates :name, :description, presence: true
  validates :name, uniqueness: true
  
end