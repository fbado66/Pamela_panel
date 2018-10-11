class CohortsController < ApplicationController
  def index
    @cohorts = Cohort.all
  end

  def show
    @cohort = Cohort.find(params[:id])

  end

  def new
    @courses = Course.all.map{ |c| [c.name, c.id] }
    @instructors = Instructor.all.map{ |i| [i.first_name, i.id] }
    @students = Student.all.map{ |s| [s.first_name, s.id] }
    @cohort = Cohort.new 
  end

  def create
    cohort = Cohort.create(
      name: params[:cohort][:name],
      start_on: params[:cohort][:start_on],
      end_on: params[:cohort][:end_on],
      instructor_id: params[:cohort][:instructor_id],
      course_id: params[:cohort][:course_id],
      student_id: params[:cohort][:student_id]
    )
    session[:cohort_id] = cohort.id
    redirect_to cohorts_path
  end
  
  def edit
    @cohort = Cohort.find(params[:id])
    @courses = Course.all.map{ |c| [c.name, c.id] }
    @instructors = Instructor.all.map{ |i| [i.first_name, i.id] }
    @students = Student.all.map{ |s| [s.first_name, s.id] }
  end

  def update
    cohort = Cohort.find(params[:id])
    cohort.update(     
      name: params[:cohort][:name],
      start_on: params[:cohort][:start_on],
      end_on: params[:cohort][:end_on],
      instructor_id: params[:cohort][:instructor_id],
      course_id: params[:cohort][:course_id],
      student_id: params[:cohort][:student_id]
    )
    redirect_to cohort_path(cohort)
  end

  def destroy
     cohort = Cohort.find(params[:id])
     cohort.destroy 
     redirect_to cohorts_path
  end

end

