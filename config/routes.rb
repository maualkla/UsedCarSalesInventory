Rails.application.routes.draw do

  resources :users do
    resources :dealerships
    resources :cars
  end

  root to: 'session#new'
  post 'login', to: 'session#create'
  get 'welcome', to: 'session#welcome' 
  get 'authorized', to: 'session#page_requires_login'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
