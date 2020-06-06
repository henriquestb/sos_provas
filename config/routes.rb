Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "users/registrations" }
  root to: 'pages#home'
  resources :carts
  get "/pagamento", to: 'carts#pagamento', as: 'pagamento'
  resources :courses do
    resources :subjects, only: [:show, :index] do
      resources :contents, only: [:show]
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
