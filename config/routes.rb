Rails.application.routes.draw do
  devise_for :users
  namespace :v1 do
    devise_scope :user do
      post "signup", to: "registrations#create"
      post "login", to: "sessions#create"
    end
    resources :users, only: [:index]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
