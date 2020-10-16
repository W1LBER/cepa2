Rails.application.routes.draw do
  resources :winemakers
  resources :positions
  resources :magazines
  resources :cepas
  resources :wines

  resources :wines do
    resources :cepas 
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
