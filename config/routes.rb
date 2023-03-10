Rails.application.routes.draw do
  namespace :admin do
    get 'products/index'
    get 'products/new'
    get 'products/create'
    get 'products/edit'
    get 'products/update'
    get 'products/destroy'
    get 'categories/index'
    get 'categories/new'
    get 'categories/create'
    get 'categories/edit'
    get 'categories/update'
    get 'categories/destroy'
  end
  devise_for :admins
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root to: 'products#index'

  resources :products, only: [:index, :show]
  resources :categories, only: [:show]
  # Defines the root path route ("/")
  # root "articles#index"
  namespace :admin do 
    root to: 'product#index'
    resources :prodcuts, only: [:index, :new, :create,:edit,:update,:destory]
    resources :categories, only: [:index, :new, :create,:edit,:update,:destory]
  end



end