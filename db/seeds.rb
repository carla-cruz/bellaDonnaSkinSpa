Policy.new(name: "24-Hour Cancellation", description: "As a courtesy to other guests and our spa therapists, if you must cancel or reschedule an appointment we require that you give at least 24 hours notice.  Cancellations made with less than 24 hours of your appointment will be charged a $10 fee.  'No-shows' will be charged 50% of the treatment price.  Appointments made the 'day of' are considered confirmed to which the cancellation policy does apply.").save
Policy.new(name: "Punctuality", description: "Please arrive 10 minutes prior to you appointment time to receive the fully allotted time for your service.  If you are running late, a phone call or text is always appreciated.  Your arrival time will determine the length of your treatment time, which will end as scheduled so that the next guest will not be inconvenienced.").save
Policy.new(name: "During Your Visit", description: "To get the most out of your treatment, communicate with your therapist.  You comfort and enjoyment are most important to us, so let us know if you have concerns about the temperature of your treatment room, music volume or other issues.").save
Policy.new(name: "Quiet Please", description: "To maintain a peaceful atmosphere, we ask that you turn your cell phone to vibrate and keep conversations to a whisper.  Please do not leave children unattended.  The spa is free from pets and smoking for the comfort and consideration of all guests. Thank you!").save


1.upto(10) do |i|
  @product = Product.new(name: "Product #{i}", price: i, description: "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo." )
  @product.save
end


1.upto(10) do |i|
  @service = Service.new(kind: "Kind #{i}", title: "Service number #{i}", duration: "#{i} minutes", description: "Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.", price: i)
  @service.save
end

