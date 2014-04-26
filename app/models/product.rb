class Product < ActiveRecord::Base

  has_and_belongs_to_many :categories
  accepts_nested_attributes_for :categories

  validates :name, :price, presence: true
  validates :name, uniqueness: true
end