Rails.application.routes.draw do


  # General routes

  get '/', to: "login#index"

  get '/login', to: "login#index"

  post '/login', to: "login#login"

  get '/logout', to: "login#logout"

  get '/dashboard', to: "dashboard#index"

  get '/register', to: 'register#index'

  post '/register', to: 'register#create'

  # Job routes

  get '/job', to: 'job#index'

  get '/job/add', to: 'job#add'

  post '/job/add', to: 'job#add_post'

  put '/job/update', to: 'job#edit_post'

  get '/job/delete', to: 'job#delete'

  get '/job/edit', to: 'job#edit'

  # Candidate routes

  get '/candidate', to: 'candidate#index'

  get '/candidate/add', to: 'candidate#add'

  post '/candidate/add', to: 'candidate#add_post'

  put '/candidate/edit', to: 'candidate#edit'

  put '/candidate/update', to: 'candidate#edit_post'

  put '/candidate/delete', to: 'candidate#delete'

  get '/candidate/detail', to: 'candidate#detail'



  # Account routes

  get '/account', to: 'account#index'

  # System routes

  get '/setting', to: "setting#index"

end
