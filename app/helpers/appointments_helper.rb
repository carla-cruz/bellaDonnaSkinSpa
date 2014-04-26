module AppointmentsHelper

  def parse_time(time)
    string_to_return = time.to_s.split(' ')
    string_to_return[1]
  end
  
  def parse_phone_number_string(number)
    number.gsub(/(\d{3})(\d{3})(\d{4})/, '\1-\2-\3')
  end
end