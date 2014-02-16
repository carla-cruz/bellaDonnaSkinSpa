class AddSortOrderToPolicies < ActiveRecord::Migration
  def change
  add_column :policies, :sort_order, :integer
  end
end
