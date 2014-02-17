class AddSortOrderToServices < ActiveRecord::Migration
  def change
    add_column :services, :sort_order, :integer
  end
end
