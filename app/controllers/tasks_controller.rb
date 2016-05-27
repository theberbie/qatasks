class TasksController < ApplicationController
  before_action :authenticate_user!, only:[:new, :create]

def index
  @tasks = Task.all
end

def new
  @task = Task.new
end

def create
 current_user.tasks.create(task_params)
  redirect_to root_path

end

def show
  @task = Task.find(params[:id])
end

def edit
  @task = Task.find(params[:id])
end

def update
  @task = Task.find(params[:id])
  @task.update_attributes(task_params)
  redirect_to root_path
end

private

def task_params
  params.require(:task).permit(:item, :game)
end

end