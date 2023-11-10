Rails.application.routes.draw do
  root "friends#index"
  resources :friends, except: [:show] do
    resources :telephones, only: [:new, :create, :destroy]
  end
end
