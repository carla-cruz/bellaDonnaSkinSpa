class AddChangeToProductsAgain < ActiveRecord::Migration
  def change
  	change_column :products, :image_url, :text, :limit => 350
end
end