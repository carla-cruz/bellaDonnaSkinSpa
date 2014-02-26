class Service < ActiveRecord::Base

  validates :title, :price, :kind, presence: true
  validates :title, uniqueness: true
end