class AddChangeToProducts < ActiveRecord::Migration
	
  change_table :products do |t|
  	t.change :image_url, :text
  end
end
