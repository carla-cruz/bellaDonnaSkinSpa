class AddSortOrderAndImageUrlToProducts < ActiveRecord::Migration
  def change
 add_column :products, :sort_order, :integer
 add_column :products, :image_url, :string
  end
end
