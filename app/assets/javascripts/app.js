$(document).ready(function(){
  $('.appointment_banner').hover(function(){
    $('.appointment_banner a:last-child').text('Your body will thank you.');
  });

  $('.appointment_banner').mouseleave(function(){
    $('.appointment_banner a:last-child').text('Shedule an appointment now!');
  });
});