class DropSortOrderFromProducts < ActiveRecord::Migration
  def change
    remove_column :products, :sort_order
  end
end
