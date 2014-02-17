class PoliciesController < ApplicationController
  respond_to :html, :js

  def index
    @policies = Policy.all
  end

  def new
    @policy = Policy.new
  end

  def create
    @policy = Policy.create!(policy_params)
    respond_to do |format|
      format.html { redirect_to policies_path }
      format.js
    end
  end

  # def edit
  #   @policy = Policy.find(params[:id])
  #   redirect_to policies_path
  # end

  # def update
  # end

  def destroy
    @policy = Policy.destroy(params[:id])
    respond_to do |format|
      format.html { redirect_to policies_path }
      format.js
    end
  end

  private

  def policy_params
    params.require(:policy).permit(:name, :description)
  end

end
