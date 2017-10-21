Rails.application.routes.draw do
  resources :projects
  devise_for :organizations
  root to: 'home#index'
end
