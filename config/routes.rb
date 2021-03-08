Rails.application.routes.draw do
  get 'sessions/new'
  resources :users_prescriptions
  resources :prescriptions 
  get 'users/show_assistant'
  
  devise_for :users, controllers: { sessions: 'users/sessions', registrations: 'users/registrations' }
  get 'home/index'
  
  
  root to: "home#index"

end
