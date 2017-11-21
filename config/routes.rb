Rails.application.routes.draw do
  devise_for :users

  root 'welcome#index'

  get '/home', to: 'home#index'

  resources :notes
  resources :todo

end
