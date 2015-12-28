Rails.application.routes.draw do
  get 'site/index'

  get 'site/login'

  get 'site/user_login'

  get 'site/sign_in_test'

  get 'site/create_account'

  post 'site/sign_in'

  post 'site/create'

end
