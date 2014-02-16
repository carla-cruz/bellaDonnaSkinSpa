class AddSortOrderToServices < ActiveRecord::Migration
  def change
 add_column :Services, :sort_order, :integer
  end
end
