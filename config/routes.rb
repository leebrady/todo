Rails.application.routes.draw do
  resources :lists
  get 'home/delete_more'
  get 'home/delete_all'
  root  'lists#index'
end