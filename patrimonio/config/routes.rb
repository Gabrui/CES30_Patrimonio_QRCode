Rails.application.routes.draw do
  get 'leituras/index'
  get 'impressaos/index'
  resources :estados
  devise_for :usuarios
  resources :siloms do
    collection { post :import}
  end
  resources :items
  resources :locals
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "paginas#index"
end


