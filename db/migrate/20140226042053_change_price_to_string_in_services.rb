class ChangePriceToStringInServices < ActiveRecord::Migration
  def self.up
   change_column :services, :price, :string
  end
  def self.down
   change_column :services, :price, :decimal
  end
end
