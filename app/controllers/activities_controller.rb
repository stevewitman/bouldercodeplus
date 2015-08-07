class ActivitiesController < ApplicationController
  before_action :set_activity, only: [:show, :edit, :update, :destroy]

  def index
    @activities = Activity.all
  end

  def show
  end

  def new
    @activity = Activity.new
  end

  def create
    activity_params = params.require(:activity).permit(:user_id, :max, :title, :description, :meet_time, :meet_place, :date, :status)
    @activity = Activity.new(activity_params)
    if @activity.save
      redirect_to activities_path, notice: 'Activity was successfully created'
    else
      render :new
    end
  end

  def edit
      @activity = Activity.find(params[:id])
  end

  def update
    activity_params = params.require(:activity).permit(:user_id, :max, :title, :description, :date, :status)
    if @activity.update(activity_params)
      redirect_to activity_path(@activity), notice: 'Activity was sucessfully updated'
    else
      render :edit
    end
  end

  def destroy
    @activity.destroy
    redirect_to projects_path, notice: 'Project was sucessfully deleted'
  end

private

  def set_activity
    begin
      @activity = Activity.find(params[:id])
    rescue ActiveRecord::RecordNotFound
      raise AccessDenied
    end
  end

end
