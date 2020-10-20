Rails.application.routes.draw do
  devise_for :users
  root to: "meetings#index"
  resources :meetings, only: [:show,:new,:edit,:create,:update,:destroy]do
   resources :dones, only:  [:create]
   collection do
    get 'dones'
   end
  end
  
  

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
