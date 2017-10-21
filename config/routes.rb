Rails.application.routes.draw do
  resources :projects
  resources :needs, only: [:show]
  devise_for :organizations
  root to: 'home#index'
end
