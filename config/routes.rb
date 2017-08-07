Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'static_page#home' # don't need to specify path

  # unused routes... YET
  # get '/about', to: 'static#about'
  # get '/users/:username', to: 'static_page#show_user'

  # rails g controller created
  # get 'static_page/home' # GET req to /static_page/home
  get '/list', to: 'static_page#list'

  get '/posts/new', to: 'static_page#new'
  post '/posts/new', to: 'static_page#create_post'
  # start of a restful routes
  get '/posts/:id', to: 'static_page#show_post', as: 'single_blog'


  # method to create a restful routes
  # resources :posts
end
