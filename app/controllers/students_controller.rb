class StudentsController < ApplicationController

  def index
    @students = Student.order(:id).all
  end

  def new
    @student = Student.new
    @cohorts = Cohort.all.map{ |c| [c.id] }
  end

  def create
    student = Student.create(
      first_name: params[:student][:first_name],
      last_name: params[:student][:last_name],
      age: params[:student][:age],
      education: params[:student][:education],
      email: params[:student][:email],
    )
    session[:student_id] = student.id
    redirect_to students_path
  end

  def show
     @student = Student.find(params[:id])
  end

  def edit
    @student = Student.find(params[:id])
    @cohorts = Cohort.all.map{ |c| [c.id] }
  end

  def update
    student = Student.find(params[:id])
    student.update(
      first_name: params[:student][:first_name],
      last_name: params[:student][:last_name],
      age: params[:student][:age],
      education: params[:student][:education],
      email: params[:student][:email]
    )
    redirect_to student_path(student)
  end
 
  def destroy
    @student = Student.find(params[:id])
    @student.destroy
 
    respond_to do |format|
            format.html 
            format.js
       end  
  end
  
  private
  def student_params
    params.require(:student).permit(:first_name, :last_name, :age, :education, :email)
  end
  
end



 
 
  