Rails.application.routes.draw do
  resources :recoveries
  resources :rests
  resources :relaxes
  resources :locations
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end