class ChangePhoneNumberToString < ActiveRecord::Migration
  def change
    change_column :appointments, :phone_number, :string

  end
end
