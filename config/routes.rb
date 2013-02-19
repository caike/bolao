OscarBolao::Application.routes.draw do
  match 'auth/:provider/callback', to: 'sessions#create', via: :any
  match 'logout', to: 'sessions#destroy', as: 'logout', via: :any
  match 'auth/failure', to: redirect('/'), via: :any, via: :any

  resources :votes
  root to: 'entry#new'
end
