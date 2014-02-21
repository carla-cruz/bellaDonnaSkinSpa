class DropSortOrderFromServices < ActiveRecord::Migration
  def change
    remove_column :services, :sort_order
  end
end
