Rails.application.routes.draw do
  get 'websites/index'

  resources :websites

  root 'websites#index'
end
