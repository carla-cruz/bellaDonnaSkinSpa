class ServicesController < ApplicationController

  def index
    @services = Service.all
  end

  def new
    @service = Service.new
  end

  def create
    @service = Service.create(service_params)
    if @service.save
      redirect_to services_path
    else
      redirect_to(:back)
    end
  end

  def edit
  end

  def update
  end

  def delete
  end

  private

  def service_params
    params.require(:service).permit(:title, :description, :duration, :price)
  end
end

