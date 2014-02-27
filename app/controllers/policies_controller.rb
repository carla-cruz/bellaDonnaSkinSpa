class PoliciesController < ApplicationController
respond_to :html, :js
  before_filter :is_admin?, except: [:index]

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

  def edit
    @policy = Policy.find(params[:id])
  end

  def update
    @policy = Policy.find(params[:id])
    respond_to do |format|
      if @policy.update_attributes(policy_params)
        format.html { redirect_to policies_path, notice: 'policy was successfully updated.' }
        format.js
      else
        format.html { render action: "edit" }
        format.js
      end
    end
  end

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
