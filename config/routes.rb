OscarBolao::Application.routes.draw do
  get 'auth/:provider/callback', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy', as: 'logout'
  match 'auth/failure', to: redirect('/'), via: :any

  resources :events
  resources :votes
  resource :group

  root to: 'events#upcoming'
end
