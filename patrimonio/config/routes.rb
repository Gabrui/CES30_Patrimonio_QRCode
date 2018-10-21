Rails.application.routes.draw do
  resources :siloms do
    collection { post :import}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

root to: "siloms#index"
