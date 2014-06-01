class StaticPagesController < ApplicationController
  before_filter :is_admin?, except: [:index]
  
  def index
    @promotion = Promotion.where('is_active = ?', true)[0]
  end

  def admin
    @promotions = Promotion.all
    @policies = Policy.all
    @service_types = ServiceType.all
    @services = Service.all
    @products = Product.all
  end
end 
