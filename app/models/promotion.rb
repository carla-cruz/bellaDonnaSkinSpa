class Promotion < ActiveRecord::Base
  validates :header, :subheader, presence: true
end