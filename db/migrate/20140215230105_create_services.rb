class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.string   :type
      t.string   :title
      t.string   :duration
      t.text     :description
      t.decimal  :price, :precision => 10, :scale => 2
      t.timestamps
    end
  end
end
