Rails.application.routes.draw do
  get 'site/index'

  get 'site/login'

  get 'site/user_login'

  post 'site/sign_up'

end
