class ServicesController < ApplicationController
  
  before_filter :is_admin?, except: [:index]

  def index
    @services = Service.all
    @service_types = ServiceType.all
    @inactive_service_types = []
    @service_types.each_with_index do |type, index| 
      @inactive_service_types << type if index != 0
    end
    
  end

  def new
    @service = Service.new
    @service_types = ServiceType.all
  end

  def create
    @service = Service.create!(service_params)
    respond_to do |format|
      format.html { redirect_to services_path }
      format.js
    end
  end

  def edit
    @service = Service.find(params[:id])
  end

  def update
    @service = Service.find(params[:id])

    respond_to do |format|
      if @service.update_attributes(service_params)
        format.html { redirect_to services_path, notice: 'service was successfully updated.' }
        format.js
      else
        format.html { render action: "edit" }
        format.js
      end
    end
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
    params.require(:service).permit(:kind, :title, :description, :duration, :price, :service_type_id)
  end
end

