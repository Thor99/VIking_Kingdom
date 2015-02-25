Rails.application.routes.draw do
  resources :vikings
  root 'home#index'
end
