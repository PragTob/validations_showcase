Rails.application.routes.draw do
  resources :users
  resources :events
  resources :registrations
  resources :user_sign_ups
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
