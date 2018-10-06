class CohortsStudentsController < ApplicationController
  def index
    @cohorts_student = CohortsStudent.all
  end

  def show
     @cohorts_student = CohortsStudent.find(params[:id])
  end

  def edit
    @cohorts_student = CohortsStudent.find(params[:id])
  end

  def delete
     cohorts_student = CohortsStudent.find(params[:id])
     cohorts_student.destroy 
     redirect_to cohorts_students_path
  end

  def create
      array = params[:cohorts_student][:student_id]
      array.map!(&:to_i)
      array = array[1..-1]

     cohorts_student = CohortsStudent.create
     array.each do |student_id|
     cohorts_student = CohortsStudent.create(
     cohort_id: params[:cohorts_student][:cohort_id],
     student_id: student_id
     )
    end 
    # student_id => params[:cohorts_student][:student_id]
    session[:cohorts_student_id] = cohorts_student.id
    redirect_to cohorts_students_path
end 

  def update
    cohorts_student = CohortsStudent.find(params[:id])
    cohorts_student.update(
    cohort_id: params[:cohorts_student][:cohort_id],
    student_id: params[:cohorts_student][:student_id]
    )
    redirect_to cohorts_student_path(cohorts_student)
  end
  

  def new
    @cohorts_student = CohortsStudent.new
    @cohort = Cohort.all.map{ |c| [c.id] }
    @student = Student.all.map{ |c| [c.id] }
  end

end
