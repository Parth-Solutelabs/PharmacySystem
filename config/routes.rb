Rails.application.routes.draw do
  get 'sessions/new'
  resources :user_prescriptions
  resources :users_prescriptions
  resources :prescriptions
  
  
  devise_for :users, controllers: { sessions: 'users/sessions', registrations: 'users/registrations' }
  get 'home/index'
  
  #get '/signup', to: 'users/registrations#new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "home#index"

end
