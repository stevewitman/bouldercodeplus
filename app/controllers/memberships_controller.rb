class MembershipsController < ApplicationController

  def create
    @membership = Membership.new(:user_id => params[:user_id], :activity_id => params[:activity_id])
    if @membership.save
      redirect_to activities_path, notice: 'You have been added'
    else
      redirect_to activities_path, notice: 'error'
    end
  end

  def destroy
    @membership = @activity.memberships.find(params[:id])
    if (@activity.user_id == current_user)
      redirect_to activities_path, notice: "Cancel this activity?"
    else
      @membership.destroy
      redirect_to activities_path, notice: "#{@membership.user.name} was successfully removed"
    end
  end

private

  def membership_params
    params.require(:membership).permit(
      :user_id,
      :activity_id
    )
  end
end
