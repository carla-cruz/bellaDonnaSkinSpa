class AppointmentsController < ApplicationController

	def index
	end

	def new
		@appointment = Appointment.new
	end

	def create
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
		end

private
	def appointment_params
		params.require(:appointment).permit(:first_name, :last_name, :phone_number, :is_new, :first_date, :first_time, :second_date, :second_time, :third_date, :third_time, :appointment_type, :comments)
	end

	end