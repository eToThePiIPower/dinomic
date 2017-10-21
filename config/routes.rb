Rails.application.routes.draw do
  resources :projects do
    post '/add_provider/:provider_id' => 'projects#add_provider', as: 'add_provider'
    resources :bookings
  end
  resources :needs, only: [:show]
  devise_for :organizations, controllers: { registrations: 'registrations' }
  root to: 'home#index'
end
