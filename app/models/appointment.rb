class Appointment < ActiveRecord::Base
  before_save :standardise_numbers

  protected

  # Called before this object is saved to the DB
  def standardise_numbers
    number = self.phone_number.gsub!(/\W/, "")
    p "#{number}"
    p "*" * 100
  end
end

