Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'application#home' # don't need to specify path
  get '/about', to: 'static#about'

  # method to create a restful routes
  resources :users

  # resources :posts
end
