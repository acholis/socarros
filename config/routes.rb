Rails.application.routes.draw do
  resources :interesses
  resources :carros
  root 'site#index'

  get '/detailhes/:id',    to: 'site#detailhes',       as: 'detailhes'

  
end
