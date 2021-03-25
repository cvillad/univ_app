Rails.application.routes.draw do
  root to: 'courses#index'
  get 'about', to: 'pages#about'
  resources :courses, except: [:index]
  resources :students
end
