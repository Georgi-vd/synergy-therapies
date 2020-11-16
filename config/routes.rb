Rails.application.routes.draw do
  root to: 'products#index'

  #get 'about', to: 'pages#about'
  #get 'contact', to: 'pages#contact'
  #get 'therapies', to: 'pages#therapies'
  #get 'formations', to: 'pages#formations'


  resources :soins, only: [:index, :show]
  resources :ateliers, only: [:index, :show]
  resources :actualites, only: [:index, :show]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
