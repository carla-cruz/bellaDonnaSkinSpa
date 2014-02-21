class Service < ActiveRecord::Base

  validates :title, :duration, :description, :price, :kind, presence: true
  validates :title, uniqueness: true
end