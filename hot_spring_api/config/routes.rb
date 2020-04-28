Rails.application.routes.draw do
  resources :recoveries, only: [:index, :create, :show]
  resources :rests, only: [:index, :create, :show]
  resources :relaxes, only: [:index, :create, :show]
  resources :locations, only: [:index, :create, :show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
