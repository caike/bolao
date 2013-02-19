OscarBolao::Application.routes.draw do
  resources :votes
  root to: 'entry#new'
end
