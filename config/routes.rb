Rails.application.routes.draw do
  devise_for :users
  root to:'tweets#index'
  resources :contacts, only: [:new, :create]
  resources :tweets do
    collection do
      get 'rental'
      get 'staff'
    end
  end
end
