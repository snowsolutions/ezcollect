Rails.application.routes.draw do


  get '/', to: "login#index"

  get '/login', to: "login#index"

  post '/login', to: "login#login"

  get '/dashboard', to: "dashboard#index"

  get '/register', to: 'register#index'

  post '/register', to: 'register#create'

  # get '/', to: "homepage#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

end
