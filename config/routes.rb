Rails.application.routes.draw do
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'application#home' # don't need to specify path
  get '/about', to: 'static#about'

  get '/:username', to: 'user#show'

  # router.get('/about', applicationCtrl.getAbout)
end
