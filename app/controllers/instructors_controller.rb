class InstructorsController < ApplicationController
  def index
    @instructors = Instructor.all
  end

  def new
    @instructor = Instructor.new
    @cohorts = Cohort.all.map{ |c| [c.id] }
  end

  def create
    instructor = Instructor.create(
      first_name: params[:instructor][:first_name],
      last_name: params[:instructor][:last_name],
      age: params[:instructor][:age],
      salary: params[:instructor][:salary],
      education: params[:instructor][:education],
      email: params[:instructor][:email],
    )
    if session[:instructor_id] = instructor.id
    redirect_to instructors_path, notice: 'Instructor successfully created!'    
    else 
    redirect_to new_instructor_path, alert: 'Something went wrong!, missing information for some fields'
    end 
  end

  def show
    @instructor = Instructor.find(params[:id])
  end

  def edit
    @instructor = Instructor.find(params[:id])
    @cohorts = Cohort.all.map{ |c| [c.id] }
  end

  def update
    instructor = Instructor.find(params[:id])
    instructor.update(
      first_name: params[:instructor][:first_name],
      last_name: params[:instructor][:last_name],
      education: params[:instructor][:education],
      age: params[:instructor][:age],
      salary: params[:instructor][:salary],
      email: params[:instructor][:email],
    )
  
    redirect_to instructor_path(instructor)
  end

  

  
  def destroy
    @instructor = Instructor.find(params[:id])
    @instructor.destroy

      respond_to do |format|
        format.html 
        format.js
      end  
  end
  private
  def instructor_params
    params.require(:instructor).permit(:first_name, :last_name, :age, :salary, :education, :email)
  end
end
