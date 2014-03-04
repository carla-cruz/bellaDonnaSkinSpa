class AppointmentsController < ApplicationController
	before_filter :is_admin?, except: [:new]
	
	def index
		@appointment = Appointment.all
	end

	def new
		@appointment = Appointment.new
		@services = Service.all
	end

	def create
		params[:appointment].parse_time_select! :first_time
		params[:appointment].parse_time_select! :second_time
		params[:appointment].parse_time_select! :third_time
		@appointment = Appointment.create!(appointment_params)
		if @appointment.save
			flash[:alert] = "Your request has been sent!"
			redirect_to root_path
		else
			flash[:alert] = "Uh oh!"
			redirect(:back)
		end
	end

	def edit
	end

	def update
	end

	def destroy
		@appointment = Appointment.destroy(params[:id])
		respond_to do |format|
			format.html { redirect_to appointments_path }
			format.js
		end
	end

	private
	def appointment_params
		params.require(:appointment).permit(:first_name, :last_name, :phone_number, :is_new, :first_date, :first_time, :second_date, :second_time, :third_date, :third_time, :appointment_type, :comments)
	end

end