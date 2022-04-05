Rails.application.routes.draw do
  get 'review/create'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'my-synths', to: 'pages#my_synths', as: :my_synths
  get 'my-bookings', to: 'pages#my_bookings', as: :my_bookings

  resources :synths do
    resources :bookings, only: :create
    resources :reviews, only: :create
  end

  resources :bookings, only: [ :show, :destroy ]

end
