class PromotionsController < ApplicationController

  before_filter :is_admin?

	def index
		@promotions = Promotion.all.reverse
	end

	def new
		@promotion = Promotion.new
	end

	def create
		@promotion = Promotion.create!(promotion_params)
		promotions = Promotion.all

		@promotion.update_is_active_if_first_promo(promotions)

		redirect_to admin_path
	end

	def activate_promotion
		clear_promotion_list
		promo = Promotion.find(params[:id])
		promo.update_attributes(is_active: true)
		redirect_to "/admin#promotion"
	end

	def edit
    @promotion = Product.find(params[:id])
	end

	def update
    @promotion = Promotion.find(params[:id])
    @promotion.update_attributes(promotion_params)
    redirect_to admin_path
  end

	def destroy
		@promotion = Promotion.find(params[:id])
		if @promotion.is_active
			@promotion = Promotion.destroy(params[:id])
			Promotion.last.update_attributes(is_active: true)
		else
			@promotion = Promotion.destroy(params[:id])
		end
		respond_to do |format|
			format.html{redirect_to admin_path}
			format.js
		end

	end

	private

	def promotion_params
		params.require(:promotion).permit(:header, :subheader, :is_active, :description)
	end

	def clear_promotion_list 
		Promotion.all.each do |p|
			p.update_attributes!(is_active: false)
		end
	end

end
