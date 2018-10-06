class CohortinstructorsController < ApplicationController
  def index
    @cohortinstructors = Cohortinstructor.all
end

def show
  @cohortinstructor = Cohortinstructor.find(params[:id])
end

def edit
  @cohortinstructor = Cohortinstructor.find(params[:id])
end

def delete
  cohortinstructor = Cohortinstructor.find(params[:id])
  cohortinstructor.destroy 
     redirect_to cohortinstructors_path
end

def create
  cohortinstructor = Cohortinstructor.create(
     instructor_id: params[:cohortinstructor][:instructor_id],
     cohort_id: params[:cohortinstructor][:cohort_id]
     )
    
    session[:cohortinstructor_id] = cohortinstructor.id
    redirect_to cohortinstructors_path
end 

  def update
    cohortinstructor = Cohortinstructor.find(params[:id])
    cohortinstructor.update(
      instructor_id: params[:cohortinstructor][:instructor_id],
      cohort_id: params[:cohortinstructor][:cohort_id]
    )
    redirect_to cohortinstructor_path(cohortinstructor)
  end
  

  def new
    @cohortinstructor = Cohortinstructor.new
    @cohort = Cohort.all.map{ |c| [c.id] }
    @instructor = Instructor.all.map{ |c| [c.id] }
  end

end