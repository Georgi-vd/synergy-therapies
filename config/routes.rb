Rails.application.routes.draw do
  root to: 'products#index'

  get 'therapeute_pharmacienne_bioenergeticienne', to: 'pages#therapeute_pharmacienne_bioenergeticienne'
  get 'contact', to: 'pages#contact'
  get 'bioenergie', to: 'pages#bioenergie'
  get 'soins_a_distance', to:'pages#soins_a_distance'

  resources :soins, only: [:index, :show]
  resources :ateliers, only: [:index, :show]
  resources :actus, only: [:index, :show]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
