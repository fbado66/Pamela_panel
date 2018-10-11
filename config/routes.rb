Rails.application.routes.draw do


  get 'homes/index'
  get 'homes/show'
  get 'homes/edit'
  get 'homes/delete'
  get 'homes/create'
  get 'homes/update'
  devise_for :admins
  # sets the landing page controller and route


root to: 'homes#index'
 
  get 'cohortinstructors/index'
  get 'cohortinstructors/show'
  get 'cohortinstructors/edit'
  get 'cohortinstructors/delete'
  get 'cohortinstructors/create'
  get 'cohortinstructors/update'
  get 'coursecohorts/index'
  get 'coursecohorts/show'
  get 'coursecohorts/edit'
  get 'coursecohorts/delete'
  get 'coursecohorts/create'
  get 'coursecohorts/update'
  get 'cohorts_students/index'
  get 'cohorts_students/show'
  get 'cohorts_students/edit'
  get 'cohorts_students/delete'
  get 'cohorts_students/create'
  get 'cohorts_students/update'
  resources :students
  resources :instructors
  resources :courses
  resources :cohorts
  resources :cohorts_students
  resources :coursecohorts
  resources :cohortinstructors
  resources :homes




  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
