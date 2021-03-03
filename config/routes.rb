Rails.application.routes.draw do
  resources :user_prescriptions
  resources :users_prescriptions
  get 'sessions/new'
  resources :prescriptions do
    member do
      get :projects, :tasks
  end
end
  devise_for :users
  get 'home/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "home#index"

end
