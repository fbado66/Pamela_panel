class StudentsController < ApplicationController

  def index
    @students = Student.order(:id).all
  end

  def show
    # loads the student with id of params[:id]
    #   from the database
     @student = Student.find(params[:id])
  end

  def edit
    # loads the student with id of params[:id]
    #   from the database
    @student = Student.find(params[:id])
    @cohorts = Cohort.all.map{ |c| [c.id] }
  end

  def delete
     # this loads the student first
     student = Student.find(params[:id])

     # this student the information inside the student
     #   object and deletes the student
     student.destroy
     # Student.destroy(params[:id])
     redirect_to students_path
  end

  def create
    # creates a new student
    student = Student.create(
      first_name: params[:student][:first_name],
      last_name: params[:student][:last_name],
      age: params[:student][:age],
      education: params[:student][:education],
      email: params[:student][:email],


    )

    # signs the newly created student in
    session[:student_id] = student.id

    redirect_to students_path
  end

  def update
    # loads the student with id of params[:id]
    #   from the database
    student = Student.find(params[:id])
    # updates the student that was currently loaded
    #   with the information retrieved from the
    #   form
    student.update(
      first_name: params[:student][:first_name],
      last_name: params[:student][:last_name],
      age: params[:student][:age],
      education: params[:student][:education],
      email: params[:student][:email]
    )
    # goes to show page
    redirect_to student_path(student)
  end

  def new
    # creates a new instance of type Student
    @student = Student.new
    @cohorts = Cohort.all.map{ |c| [c.id] }

  end

  private

  def student_params
    params.require(:student).permit(:first_name, :last_name, :age, :education, :email)
  end


end



 
 
  