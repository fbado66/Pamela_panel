class InstructorsController < ApplicationController
  def index
    @instructors = Instructor.all
  end

  def show
     @instructor = Instructor.find(params[:id])
  end

  def edit
    @instructor = Instructor.find(params[:id])
    @cohorts = Cohort.all.map{ |c| [c.id] }

  end

  def delete
     instructor = Instructor.find(params[:id])
     instructor.destroy 
     redirect_to instructors_path
  end

  def create
    instructor = Instructor.create(
      first_name: params[:instructor][:first_name],
      last_name: params[:instructor][:last_name],
      age: params[:instructor][:age],
      salary: params[:instructor][:salary],
      education: params[:instructor][:education],
      email: params[:instructor][:email]


      # cohorts(:cohort, :id, cohort.all, :id, :name)


    )
    session[:instructor_id] = instructor.id
    redirect_to instructors_path
  end

  def update
    instructor = Instructor.find(params[:id])
    instructor.update(
      first_name: params[:instructor][:first_name],
      last_name: params[:instructor][:last_name],
      age: params[:instructor][:age],
      salary: params[:instructor][:salary],
      education: params[:instructor][:education],
      email: params[:instructor][:email]

    )
    redirect_to instructor_path(instructor)
  end

  def new
    @instructor = Instructor.new
    @cohorts = Cohort.all.map{ |c| [c.id] }

  end

end
