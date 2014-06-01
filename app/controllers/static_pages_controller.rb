class StaticPagesController < ApplicationController
  
  def index
    @promotion = Promotion.where('is_active = ?', true)[0]
  end
end 
