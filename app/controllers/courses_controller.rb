class CoursesController < ApplicationController
  def index
    @courses = Course.all
  end

  def show
     @course = Course.find(params[:id])
  end

  def new
    @course = Course.new
  end

  def create
   course = Course.create(
      name: params[:course][:name],
      total_of_hrs: params[:course][:total_of_hrs],
      description: params[:course][:description]

    )
    session[:course_id] = course.id
    redirect_to courses_path
  end


  def edit
    @course = Course.find(params[:id])
    # redirect_to courses_path
  
  end

  def update
    course = Course.find(params[:id])
    course.update(
      name: params[:course][:name],
      total_of_hrs: params[:course][:total_of_hrs],
      description: params[:course][:description]
    )
    redirect_to courses_path
  end

   def destroy
     course = Course.find(params[:id])
     course.destroy 
     redirect_to courses_path
  end


end
