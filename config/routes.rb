Rails.application.routes.draw do

  root to: 'noteworthy#index'

  get '/index', to: 'noteworthy#index'

  get '/login', to: 'noteworthy#login'

  get '/user_login', to: 'noteworthy#user_login'

  post '/sign_in', to: 'noteworthy#sign_in'

  post '/create', to: 'noteworthy#create'

end
