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
    redirect_to admin_path
  end

  def edit
    @service_type = ServiceType.find(params[:id])
  end

  def update
    @service_type = ServiceType.find(params[:id])
    @service_type.update_attributes(service_type_params)
    redirect_to admin_path
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

