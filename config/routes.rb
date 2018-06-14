Rails.application.routes.draw do
  resources :conferences
  devise_for :users

  resources 'usuarios', as: :users, only: [:show, :update, :edit]

  authenticated :user do 
  	root to: 'home#index'
    resources :places
    resources :categories
    resources :contacts
    post 'search/create'
    get 'search/new'
  end

  unauthenticated :user do
  	root to: 'home#unregistered'
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
