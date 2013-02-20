OscarBolao::Application.routes.draw do
  get 'auth/:provider/callback', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy', as: 'logout'
  match 'auth/failure', to: redirect('/'), via: :any

  resources :votes
  root to: 'entry#new'
end
