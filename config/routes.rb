Rails.application.routes.draw do
  resources :coaches
  resources :bookings
  devise_for :users
  root to: "pages#home"
end
