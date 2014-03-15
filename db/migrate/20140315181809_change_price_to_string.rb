class ChangePriceToString < ActiveRecord::Migration
  def change
    change_column :products, :price, :string
  end
end
