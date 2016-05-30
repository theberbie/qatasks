class RemindersController < ApplicationController

def index
  @reminders = Reminder.all
  @reminder = Reminder.last
end

def new 
  @reminder = Reminder.new
end

def create 
  @reminder.create(reminder_params)
  redirect_to root_path
end

def show
 @reminder = Reminder.task(params[:id])
end



private

def reminder_params
params.require(:reminder).permit(:event)

end


end
