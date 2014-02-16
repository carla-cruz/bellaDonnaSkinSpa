class DropColumnFromServices < ActiveRecord::Migration
  def down
    remove_column :services, :type
  end

  def up
    add_column :services, :kind, :string
  end
end
