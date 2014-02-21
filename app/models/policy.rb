class Policy < ActiveRecord::Base
  validates :name, :description, presence: true
end