class HomesController < ApplicationController
  def index
    
     if admin_signed_in?
      homes_path
     else
      redirect_to new_admin_session_path
      # redirect_to homes_show_path
     end 

    #  reminder table 
     @reminders = Reminder.all

    #  student table 
     @students = Student.all

    #  instructor table
     @instructors = Instructor.all

    #  course table
    @courses = Course.all

    #  cohort table
    @cohorts = Cohort.all

    # course-cohort 
    @coursecohorts = Coursecohort.all

    # course-cohort 
    @cohorts_student = CohortsStudent.all

    # cohort-instructors 
    @cohortinstructors = Cohortinstructor.all

    end
end
