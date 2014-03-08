class ServiceTypesController < ApplicationController
  
  before_filter :is_admin?

  def index
    @service_types = ServiceType.all
  end

  def new
    @service_type = ServiceType.new
    @service = Service.new
  end

  def create
    @service_type = ServiceType.create!(service_type_params)
    respond_to do |format|
      format.html { redirect_to service_types_path }
      format.js
    end
  end

  def edit
    @service_type = ServiceType.find(params[:id])
  end

  def update
    @service_type = ServiceType.find(params[:id])

    respond_to do |format|
      if @service_type.update_attributes(service_type_params)
        format.html { redirect_to service_types_path, notice: 'service type was successfully updated.' }
        format.js
      else
        format.html { render action: "edit" }
        format.js
      end
    end
  end

  def destroy
    @service_type = ServiceType.destroy(params[:id])
    respond_to do |format|
      format.html { redirect_to service_types_path }
      format.js
    end
  end

  private

  def service_type_params
    params.require(:service_type).permit(:name, :description, :image_url)
  end
end

