class AttendancesController < ApplicationController
  def create
    @user = current_user
    if !@user.nil?
      @attendance = @user.user_event_maps.build(attendance_params)
      if @attendance.save
        redirect_to @user unless !@user
      else
        redirect_to 'events#index'
      end
    else
      redirect_to 'events#index'
    end
  end

  private

    def attendance_params
      params.require(:user_event_map).permit(:attended_event_id)
    end
end
