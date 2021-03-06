Rails.application.routes.draw do
  get 'card/modal',to: "cards#modal"
  get 'images/:id',to: 'welcome#index'
  get 'administrator/login', to:"sessions#new"
  post 'administrator/login', to:"sessions#login"
  delete 'admins/all/destroy', to: 'admins#destroy_all'
  root to: 'cards#index' 
  get 'welcome/create', to: 'welcome#create'
  get 'welcome', to: 'welcome#index'
  post 'create', to: 'cards#create'
  delete 'card/:id', to: 'cards#destroy'
  patch 'card/:id', to:'cards#update'
  get 'user/create', to: 'users#create'
  delete 'logout', to: 'users#destory'
  resources :admins
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
