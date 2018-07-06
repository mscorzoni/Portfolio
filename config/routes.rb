Rails.application.routes.draw do
  resources :portfolio1s
  get 'pages/home'

  get 'pages/about'

  get 'pages/contact'

  resources :blogs

end
