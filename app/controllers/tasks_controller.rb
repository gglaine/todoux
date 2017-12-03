class TasksController < ApplicationController
  def index
    @tasks = Task.all.order(created_at: :desc)
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    @task.save
    redirect_to tasks_path
  end

  def show
    @task = Task.find(params[:id])
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to tasks_path
  end

  def mark_as_done!
    @task = Task.find(params[:id])
    @task.done = true
    @task.save
    redirect_to tasks_path
  end

  private

  def task_params
    params.require(:task).permit(:name, :done, :deadline)
  end

end
