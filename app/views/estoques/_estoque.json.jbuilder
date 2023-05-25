json.extract! estoque, :id, :quantidade, :tipo, :ano, :marcas, :created_at, :updated_at
json.url estoque_url(estoque, format: :json)
