Rails.application.routes.draw do
  devise_for :organizations
  root to: 'home#index'
end
