Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'static_page#home' # don't need to specify path
  get '/about', to: 'static#about'

  # rails g controller created
  # get 'static_page/home' # GET req to /static_page/home

  get '/list', to: 'static_page#list'
  get '/posts/:id', to: 'static_page#show_post', as: 'single_blog'

  get '/users/:username', to: 'static_page#show_user'

  # method to create a restful routes
  # resources :posts
end
