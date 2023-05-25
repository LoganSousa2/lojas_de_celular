json.extract! venda, :id, :valor, :data_venda, :total_vendido, :produto_id, :cliente_id, :created_at, :updated_at
json.url venda_url(venda, format: :json)
