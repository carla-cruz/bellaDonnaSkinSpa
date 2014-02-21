class ServicesController < ApplicationController
  
  before_filter :is_admin?, except: [:index]

  def index
    @services = Service.all
    @skin_services = Service.where('kind = ?', 'skin')
    @sugaring_services = Service.where('kind = ?', 'sugaring')
  end

  def new
    @service = Service.new
  end

  def create
    @service = Service.create!(service_params)
    respond_to do |format|
      format.html { redirect_to services_path }
      format.js
    end
  end

  def edit
  end

  def update
  end

  def destroy
    @service = Service.destroy(params[:id])
    respond_to do |format|
      format.html { redirect_to services_path }
      format.js
    end
  end

  private

  def service_params
    params.require(:service).permit(:type, :title, :description, :duration, :price)
  end
end

