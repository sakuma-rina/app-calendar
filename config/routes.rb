Rails.application.routes.draw do
  devise_for :users
  root to: "meetings#index"
  resources :meetings, only: [:show,:new,:edit,:create,:update,:destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end