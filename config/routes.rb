Rails.application.routes.draw do
  resources :coaches do
    resources :bookings
  end
  devise_for :users
  root to: "pages#home"
end
