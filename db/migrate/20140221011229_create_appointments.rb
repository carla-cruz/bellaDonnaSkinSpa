class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
    	t.string :first_name
    	t.string :last_name
    	t.integer :phone_number
    	t.boolean :is_new
    	t.date :first_date
    	t.time :first_time
    	t.date :second_date
    	t.time :second_time
    	t.date :third_date
    	t.time :third_time
    	t.string :appointment_type
    	t.text :comments
    end
  end
end
