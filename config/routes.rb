Rails.application.routes.draw do

  get '/', to: "login#index"

  get '/login', to: "login#index"

  post '/login', to: "login#login"

  get '/logout', to: "login#logout"

  get '/dashboard', to: "dashboard#index"

  get '/register', to: 'register#index'

  post '/register', to: 'register#create'

  get '/job', to: 'job#index'

  get '/job/add', to: 'job#add'

  post '/job/add', to: 'job#add_post'

  put '/job/update', to: 'job#edit'

  get '/job/delete', to: 'job#delete'

  get '/job/view', to: 'job#view'

  get '/account', to: 'account#index'

  get '/candidate', to: 'candidate#index'

  get '/setting', to: "setting#index"

  # get '/', to: "homepage#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

end
