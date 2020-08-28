class AppointmentsController < ApplicationController

  def index
    # will have a template in views .html file
    @appointments = Appointment.all
  end
end
