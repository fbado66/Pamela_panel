Rails.application.routes.draw do


  devise_for :admins
  # sets the landing page controller and route


root to: 'homes#index'
 

  resources :students
  resources :instructors
  resources :courses
  resources :cohorts
  resources :cohorts_students
  resources :coursecohorts
  resources :cohortinstructors
  resources :homes
  resources :reminders




  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
