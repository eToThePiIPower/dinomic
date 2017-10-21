class BookingsController < ApplicationController
  def index
    @project = Project.find(params[:project_id])
    @bookings = @project.bookings.all
  end

  def new
    @project = Project.find(params[:project_id])
    @booking = @project.bookings.new(provider_id: params[:q])
  end

  def create
    @project = Project.find(params[:project_id])
    @booking = @project.bookings.new(booking_params)

    if @booking.save
      redirect_to project_bookings_path(@project) 
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:provider_id, :project_id, :starts_on, :ends_on)
  end
end
