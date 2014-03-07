class Promotion < ActiveRecord::Base
  validates :header, :subheader, :description, presence: true

  def update_is_active_if_first_promo(promotions)
    if self.id == promotions.first.id
      self.is_active = true
      self.save
    end
  end
end