class RemindersController < ApplicationController
  
  def index
    @reminders = Reminder.all
  end

  def new
    @reminder = Reminder.new
    
  end

  def show
    @reminder = Reminder.find(params[:id])
  end


 def create
  reminder = Reminder.create(
     name: params[:reminder][:name],
     content: params[:reminder][:content],
   )
   session[:reminder_id] = reminder.id
   redirect_to reminders_path
 end


 def edit
   @reminder = Reminder.find(params[:id])
 
 end

 def update
   reminder = Reminder.find(params[:id])
   reminder.update(
     name: params[:reminder][:name],
     content: params[:reminder][:content],
   )
   redirect_to reminder_path(reminder)
 end

  def destroy
    @reminder = Reminder.find(params[:id])
    @reminder.destroy 
    respond_to do |format|
     format.html 
     format.js
    end  
 end


end
