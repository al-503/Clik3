Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :restaurants do 
    resources :dishes, only: [ :index ]
  end

  resources :offers, only: [ :new, :create, :show ]

  resources :users, only: [ :show ]

  resource :profil, only: [ :show, :edit, :update ]
end
