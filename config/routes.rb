Rails.application.routes.draw do
  root to: 'courses#index'
  get 'about', to: 'pages#about'
  resources :courses, except: [:index]
  resources :students
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'login', to: 'sessions#destroy'
  post 'course_enroll', to: 'student_courses#create'
end
