Rails.application.routes.draw do


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :restaurants
  resources :images
  resources :users

  root to: 'restaurants#index'

  #user login
  get "/login" => "session#new"  #login form
  post "/login" => "session#create" #form submit here to perform login and set session
  delete "/login" => "session#destroy"  #logout(delete session)



end
