Rails.application.routes.draw do
  root to: 'products#index'

  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  get 'bioenergie', to: 'pages#bioenergie'

  resources :soins, only: [:index, :show]
  resources :ateliers, only: [:index, :show]
  resources :actus, only: [:index, :show]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
