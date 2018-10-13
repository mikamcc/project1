Rails.application.routes.draw do
  get 'restaurants/new'
  get 'restaurants/create'
  get 'restaurants/show'
  get 'restaurants/index'
  get 'restaurants/edit'
  get 'restaurants/update'
  get 'restaurants/destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :restaurants
  resources :images
  resources :users
end
