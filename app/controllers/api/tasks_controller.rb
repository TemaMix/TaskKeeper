class Api::TasksController < ApplicationController

  def index
    render json: tasks
  end

  def create
    task = Task.create!(safe_params)
    render json: task, status: 201
  end

  def edit
    render json: task, status: 201
  end

  def update
    task.update_attributes(safe_params)
    render nothing: true, status: 204
  end

  def destroy
    task.destroy
    render nothing: true, status: 204
  end

  private

  def tasks
    @tasks ||= Task.all
  end

  def task
    @task ||= Task.find(params[:id])
  end

  def safe_params
    params.require(:task).permit(:title, :text, :complete)
  end



end