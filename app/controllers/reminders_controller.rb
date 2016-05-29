class RemindersController < ApplicationController

def index
  @reminder = Reminder.all
end

def new 
  @reminder = Reminder.new
end

def create 
  current_user.reminders.create(reminder_params)
  redirect_to root_path
end


private

def reminder_params
params.require(:reminder).permit(:event)

end


end
