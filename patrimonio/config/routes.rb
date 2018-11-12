Rails.application.routes.draw do

  resources :categorias
  scope path_names: { new: "novo", edit: "editar" } do
    devise_for :usuarios, path_names: { password: "senha", sign_in: "entrar", sign_out: 'sair', sign_up: 'cadastrar', cancel: 'apagar' }
    resources :itens
    resources :locais
    resources :estados
    resources :leituras, only: [:index, :create]
    resources :impressoes, only: [:index, :create]
    resources :siloms do
      collection { post :import}
    end
  end

  get '/imprimir' => 'impressoes#imprimir'

  root to: "paginas#index"
end


