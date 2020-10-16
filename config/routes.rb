Rails.application.routes.draw do
  resources :cepas
  resources :wines

  resources :wines do
    resources :cepas 
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
