class TasksController < ApplicationController
  before_action :authenticate_user!, only:[:new, :create, :edit, :update, :destroy]

def index
  @tasks = Task.all
end

def new
  @task = Task.new
end

def create
  @task = current_user.tasks.create(task_params)
  if @task.valid?
  redirect_to root_path
else
  render :new, status: :unprocessable_entity
end
end

def show
  @task = Task.find(params[:id])
end

def edit
  @task = Task.find(params[:id])

  
end

def update
  @task = Task.find(params[:id])
  if @task.user != current_user
    return render text: 'Not Allowed', status: :forbidden
  end
  @task.update_attributes(task_params)
  if @task.valid?
  redirect_to root_path
else
  render :edit, status: :unprocessable_entity
end
end

def destroy
  @task = Task.find(params[:id])
  if @place.user !=current_user
    return render text: 'Not Allowed', status: :forbidden
  end

  @task.destroy
  redirect_to root_path
end
private

def task_params
  params.require(:task).permit(:item, :game)
end

end