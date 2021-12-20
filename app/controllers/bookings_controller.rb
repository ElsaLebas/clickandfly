class BookingsController < ApplicationController

    def new 
        @booking = Booking.new 
        authorize @booking 
    end

    def create
        @booking = Booking.new(booking_params)
        @booking.user = current_user
        @plane = Plane.find(params[:plane_id])  
        @booking.plane = @plane  
        authorize @booking

        if @booking.save
            redirect_to plane_path(@plane), notice:"Your booking request was successfully sent"       
        else
            render 'planes/show'
        end
    end

    private
  
    def booking_params
      params.require(:booking).permit(:start_date, :end_date, :approved, :plane_id, :user_id)
    end
end