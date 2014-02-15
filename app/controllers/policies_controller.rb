class PoliciesController < ApplicationController

  def index
    @policies = Policy.all
  end

  def new
    @policy = Policy.new
  end

  def create
    @policy = Policy.create(policy_params)
    if @policy.save
      redirect_to policies_path
    else
      redirect_to(:back)
    end
  end

  def edit
    @policy = Policy.find(params[:id])
    redirect_to policies_path
  end

  def update
  end

  def delete
  end

  private

  def policy_params
    params.require(:policy).permit(:name, :description)
  end

end
