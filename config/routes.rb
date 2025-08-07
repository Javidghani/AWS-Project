Rails.application.routes.draw do
  devise_for :users

  # Root page shows all categories
  root "categories#index"

  # Categories with nested products index
  resources :categories, only: [:index, :show] do
    resources :products, only: [:index]
  end

  # Products global index and show (outside of categories)
  resources :products, only: [:index, :show]

  # Health check route
  get "up" => "rails/health#show", as: :rails_health_check

  # Uncomment if you want PWA support
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
end
