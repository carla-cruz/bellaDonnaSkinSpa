class DropKindFromServices < ActiveRecord::Migration
  def change
    remove_column :services, :kind
    add_column :services, :service_type_id, :integer
  end
end
