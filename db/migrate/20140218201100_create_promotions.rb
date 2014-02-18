class CreatePromotions < ActiveRecord::Migration
  def change
    create_table :promotions do |t|
    	t.string :header
    	t.string :subheader
    	t.boolean :is_active
    	t.timestamps
    end
  end
end
