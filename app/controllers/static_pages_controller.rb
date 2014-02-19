class StaticPagesController < ApplicationController
  http_basic_authenticate_with :name => "bella", :password => "donna"
  
  def index
    @promotion = Promotion.where('is_active = ?', true)[0]
  end

  def about
  end

end
