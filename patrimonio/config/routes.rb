Rails.application.routes.draw do
  devise_for :usuarios
  resources :siloms do
    collection { post :import}
  end
  resources :items
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "siloms#index"
end


