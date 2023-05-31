Rails.application.routes.draw do
  devise_for :users
  resources :users
  resources :estoques
  resources :vendas
  resources :clientes
  resources :produtos, :path => "produtos" do
  collection do
    get "/relatorio"  => "produtos#relatorio", :as => "relatorio" 
  end
end

  resources :fornecedors, :path => "fornecedors" do
  collection do
    get "/relatorio"  => "fornecedors#relatorio", :as => "relatorio" 
  end
end
root to: 'produtos#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
