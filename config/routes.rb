Rails.application.routes.draw do
  resources :coaches
  devise_for :users
  root to: "pages#home"
end
