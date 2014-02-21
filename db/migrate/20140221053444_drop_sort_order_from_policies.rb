class DropSortOrderFromPolicies < ActiveRecord::Migration
  def change
    remove_column :policies, :sort_order
  end
end
