Rails.application.routes.draw do
  mount StripeEvent::Engine, at: '/stripe-webhooks'
  mount PdfjsViewer::Rails::Engine => "/pdfjs", as: 'pdfjs'
  devise_for :users, controllers: { registrations: "users/registrations" }
  root to: 'pages#home'
  resources :carts
  resources :orders, only: [:show, :create] do
    resources :payments, only: :new
  end
  get "/pagamento", to: 'carts#pagamento', as: 'pagamento'
  resources :courses do
    resources :subjects, only: [:show, :index] do
      resources :bought_subjects
      resources :contents, only: [:show]
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
