Rails.application.routes.draw do
  resources :leituras, only: [:index, :create]
  resources :impressoes, only: [:index, :create]
  get '/imprimir' => 'impressoes#imprimir'
  resources :estados
  devise_for :usuarios
  resources :siloms do
    collection { post :import}
  end
  resources :itens
  resources :locais
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "paginas#index"
end


