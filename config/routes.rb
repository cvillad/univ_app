Rails.application.routes.draw do
  root to: 'courses#index'
  resources :courses, except: [:index]
  get 'about', to: 'pages#about'
end
