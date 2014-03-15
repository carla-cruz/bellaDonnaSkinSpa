$(document).ready(function(){

$('.appointment_banner a').hover(changeMessage, resetMessage);

});


changeMessage = function(){
	$(this).text('Your body will thank you.');
};

resetMessage = function(){
	$(this).text('Shedule an appointment now!');
};
