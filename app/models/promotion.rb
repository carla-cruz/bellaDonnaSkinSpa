class Promotion < ActiveRecord::Base
  validates :header, :subheader, :description, presence: true
end