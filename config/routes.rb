Rails.application.routes.draw do

  scope "(:locale)", locale: /#{I18n.available_locales.join("|")}/ do
end

  devise_for :users
  root 'static_pages#landing_page'
  get 'about', to: 'static_pages#about'
  get 'add_info', to: 'static_pages#add_info'
  get 'logout', to: 'sessions#destroy'

  resources :users
    resources :restaurants do
      resources :dishes
    end
    resources :orders do
      resources :order_items
    end
    
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
