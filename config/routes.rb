Rails.application.routes.draw do
  root "friends#index"
  resources :friends, except: [:show]
end
