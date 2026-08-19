Rails.application.routes.draw do
  get "admin" => "admin#index"
  resources :users
  resources :products
  resources :passwords, param: :token

  scope "(:locale)" do
    resources :orders
    resources :line_items
    resources :carts
    resource :session
    root "store#index", as: "store_index", via: :all
  end

  get "up" => "rails/health#show", as: :rails_health_check
end
