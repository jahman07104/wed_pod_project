Rails.application.routes.draw do
  resources :appointments
  resources :users
  resources :names
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
