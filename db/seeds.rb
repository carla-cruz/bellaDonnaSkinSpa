Policy.create(name: "24-Hour Cancellation", description: "As a courtesy to other guests and our spa therapists, if you must cancel or reschedule an appointment we require that you give at least 24 hours notice.  Cancellations made with less than 24 hours of your appointment will be charged a $10 fee.  'No-shows' will be charged 50% of the treatment price.  Appointments made the 'day of' are considered confirmed to which the cancellation policy does apply.")
Policy.create(name: "Punctuality", description: "Please arrive 10 minutes prior to you appointment time to receive the fully allotted time for your service.  If you are running late, a phone call or text is always appreciated.  Your arrival time will determine the length of your treatment time, which will end as scheduled so that the next guest will not be inconvenienced.")
Policy.create(name: "During Your Visit", description: "To get the most out of your treatment, communicate with your therapist.  You comfort and enjoyment are most important to us, so let us know if you have concerns about the temperature of your treatment room, music volume or other issues.")
Policy.create(name: "Quiet Please", description: "To maintain a peaceful atmosphere, we ask that you turn your cell phone to vibrate and keep conversations to a whisper.  Please do not leave children unattended.  The spa is free from pets and smoking for the comfort and consideration of all guests. Thank you!")

1.upto(10) do |i|
  Product.create(name: "Product #{i}", price: i, description: "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.", image_url: "http://www.seagullhair.com/Images/photos/moroccan-oil-store-products.jpg")
end

ServiceType.create!(name: "Skin Treatments", description: "His utinam eleifend ea, his inermis intellegebat ne, ea everti iisque usu. Dicant doctus diceret ei per, ad eum nisl appellantur. Mel ex mazim voluptua, mea vide delicata referrentur at. Has ne inimicus laboramus, an propriae consetetur usu. Ut eum detraxit petentium.", image_url: "assets/legs.jpg")
1.upto(10) do |i|
  Service.create!(service_type_id: ServiceType.last.id, title: "Service #{i}", duration: "#{i}0 minutes", price: "$#{i}0.00", description: "Lorem ipsum dolor sit amet, ad nam suas habeo, sea probo tation appareat ut, error possit habemus ut sea. Erat deseruisse assueverit et quo, ad suas ferri iusto pro. Fuisset adipiscing usu an, vim cu ipsum voluptatum inciderint. Pro ut commodo iracundia, alii solum et vel, nulla oblique no cum. Tale commodo petentium nec et, usu eripuit luptatum ea.")
end

ServiceType.create!(name: "Body Sugaring", description: "His utinam eleifend ea, his inermis intellegebat ne, ea everti iisque usu. Dicant doctus diceret ei per, ad eum nisl appellantur. Mel ex mazim voluptua, mea vide delicata referrentur at. Has ne inimicus laboramus, an propriae consetetur usu. Ut eum detraxit petentium.", image_url: "assets/legs.jpg")
11.upto(20) do |i|
  Service.create!(service_type_id: ServiceType.last.id, title: "Service #{i}", duration: "#{i}0 minutes", price: "$#{i}0.00", description: "Lorem ipsum dolor sit amet, ad nam suas habeo, sea probo tation appareat ut, error possit habemus ut sea. Erat deseruisse assueverit et quo, ad suas ferri iusto pro. Fuisset adipiscing usu an, vim cu ipsum voluptatum inciderint. Pro ut commodo iracundia, alii solum et vel, nulla oblique no cum. Tale commodo petentium nec et, usu eripuit luptatum ea.")
end

ServiceType.create!(name: "Another Spa Service Type", description: "His utinam eleifend ea, his inermis intellegebat ne, ea everti iisque usu. Dicant doctus diceret ei per, ad eum nisl appellantur. Mel ex mazim voluptua, mea vide delicata referrentur at. Has ne inimicus laboramus, an propriae consetetur usu. Ut eum detraxit petentium.", image_url: "assets/legs.jpg")
21.upto(30) do |i|
  Service.create!(service_type_id: ServiceType.last.id, title: "Service #{i}", duration: "#{i}0 minutes", price: "$#{i}0.00", description: "Lorem ipsum dolor sit amet, ad nam suas habeo, sea probo tation appareat ut, error possit habemus ut sea. Erat deseruisse assueverit et quo, ad suas ferri iusto pro. Fuisset adipiscing usu an, vim cu ipsum voluptatum inciderint. Pro ut commodo iracundia, alii solum et vel, nulla oblique no cum. Tale commodo petentium nec et, usu eripuit luptatum ea.")
end

Promotion.create!(header: "Spa Facial Special", subheader: "25% Off Cash Payments", description: "January 15 - March 1")
Promotion.create!(header: "Easter Weaster Special", subheader: "Free Body Treatments", description: "March through End of April")