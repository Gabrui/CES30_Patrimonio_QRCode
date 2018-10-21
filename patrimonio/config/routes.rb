Rails.application.routes.draw do
    resources :siloms do
    collection { post :import}
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "siloms#index"
end


