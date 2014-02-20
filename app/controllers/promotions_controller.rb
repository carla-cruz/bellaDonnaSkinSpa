class PromotionsController < ApplicationController

	def index
		@promotions = Promotion.all.reverse
	end

	def new
		@promotion = Promotion.new
	end

	def create
		@promotion = Promotion.create!(promotion_params)
		respond_to do |format|
			format.html{redirect_to promotions_path}
			format.js
		end
	end

	def activate_promotion
		clear_promotion_list
		promo = Promotion.find(params[:id])
		promo.update_attributes(is_active: true)
		redirect_to promotions_path
	end

	def edit
	end

	def update
	end

	def destroy
		@promotion = Promotion.destroy(params[:id])
		respond_to do |format|
			format.html{redirect_to promotions_path}
			format.js
		end

	end

	private

	def promotion_params
		params.require(:promotion).permit(:header, :subheader, :is_active)
	end

	def clear_promotion_list 
		Promotion.all.each do |p|
			p.update_attributes!(is_active: false)
		end
	end

end
