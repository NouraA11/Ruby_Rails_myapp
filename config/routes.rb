Rails.application.routes.draw do
  resources :categories
  get 'archive/index'
  resources :entries
  root "entries#index" #entries is a controller and index is an action
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
