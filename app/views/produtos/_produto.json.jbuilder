json.extract! produto, :id, :nome, :descricao, :marca, :preco, :fornecedor_id, :created_at, :updated_at
json.url produto_url(produto, format: :json)
