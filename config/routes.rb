Rails.application.routes.draw do
  resources :estoques
  resources :vendas
  resources :clientes
  resources :produtos
  resources :fornecedors
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
