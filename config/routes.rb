Rails.application.routes.draw do
  root 'shops#index'
  resources :shops, only: %i[index show]
end
