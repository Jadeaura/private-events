class EventsController < ApplicationController
  def new
    @event = Event.new
  end
  def create
    @user = current_user
    if !@user.nil?
      @event = @user.events.build(event_params)
      if @event.save
        redirect_to @event
      else
        render 'new'
      end
    else
      render 'new'
    end
  end
  def index
    @events = Event.all
  end
  def show
    @event = Event.find_by(id: params[:id])
    @attendance = UserEventMap.new
  end

  private

    def event_params
      params.require(:event).permit(:description, :location, :date)
    end
end
