class Appointment < ActiveRecord::Base
  before_save :standardise_numbers

  protected

  # Called before this object is saved to the DB
  def standardise_numbers
    self.phone_number.gsub!(/\D/, "-")
  end
end