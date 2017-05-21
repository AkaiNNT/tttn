Rails.application.routes.draw do
  

  namespace :admin do
    resources :users

    root to: "users#index"
  end

  devise_for :users, controller: {
    sessions: 'users/sessions'
  }
  resources :user_profiles
  resources :users do
  	get :update_profile, on: :member
  end
  root to: "users#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
