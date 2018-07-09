Rails.application.routes.draw do
  resources :portfolio1s, except: [:show]
  get 'portfolio/:id', to: 'portfolio1s#show', as: 'portfolio_show'

  get 'about', to: 'pages#about'

  get 'contact', to: 'pages#contact'

  resources :blogs

  root to: 'pages#home'

end
