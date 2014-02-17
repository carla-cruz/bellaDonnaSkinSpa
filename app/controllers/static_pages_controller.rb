class StaticPagesController < ApplicationController
  http_basic_authenticate_with :name => "bella", :password => "donna"
  
  def index
  end

  def about
  end

end
