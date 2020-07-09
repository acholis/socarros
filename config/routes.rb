Rails.application.routes.draw do
  devise_for :users
  resources :interesses
  resources :carros
  root 'site#index'

  get '/detailhes/:id',    to: 'site#detailhes',       as: 'detailhes'
  get '/dashboard',                         to: 'dashboard#index',            as: 'dashboard'

  
end
