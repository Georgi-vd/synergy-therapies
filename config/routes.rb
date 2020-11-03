Rails.application.routes.draw do
  root to: 'pages#home'

  #get 'about', to: 'pages#about'
  #get 'contact', to: 'pages#contact'
  #get 'therapies', to: 'pages#therapies'
  #get 'formations', to: 'pages#formations'

  resources :products, only: [:index, :show] do
    resources :soins, only: [:index, :show]
    resources :ateliers, only: [:index, :show]
    resources :actualites, only: [:index, :show]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
