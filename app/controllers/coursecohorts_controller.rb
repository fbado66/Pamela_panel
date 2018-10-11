class CoursecohortsController < ApplicationController
def index
    @coursecohort = Coursecohort.all
end

def show
    @coursecohort = Coursecohort.find(params[:id])
end

def edit
    @coursecohort = Coursecohort.find(params[:id])
end

def destroy
    coursecohort = Coursecohort.find(params[:id])
    coursecohort.destroy 
     redirect_to coursecohorts_path
end

def create
    coursecohort = Coursecohort.create(
     course_id: params[:coursecohort][:course_id],
     cohort_id: params[:coursecohort][:cohort_id]
     )
    
    session[:coursecohort_id] = coursecohort.id
    redirect_to coursecohorts_path
end 

  def update
    coursecohort = Coursecohort.find(params[:id])
    coursecohort.update(
      course_id: params[:coursecohort][:course_id],
      cohort_id: params[:coursecohort][:cohort_id]
    )
    redirect_to coursecohort_path(coursecohort)
  end
  

  def new
    @coursecohort = Coursecohort.new
    @cohorts = Cohort.all.map{ |c| [c.id] }
    @courses = Course.all.map{ |c| [c.id] }
  end

end