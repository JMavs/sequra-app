Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :merchants, only: [:index] do
    get 'orders', on: :collection
    resources :orders, only: [:index]
  end
end
