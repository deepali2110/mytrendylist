Rails.application.routes.draw do
  resources :carts do
  resources :products
  end
  resources :products
  
  #get 'home/index'
  root 'home#index'
  get 'home/about'
  devise_for :users,controller: {
    sessions: 'users/sessions'
  }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
