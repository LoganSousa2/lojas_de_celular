class CreateProdutos < ActiveRecord::Migration[6.1]
  def change
    create_table :produtos do |t|
      t.string :nome
      t.string :descricao
      t.string :marca
      t.decimal :preco
      t.references :fornecedor, null: false, foreign_key: true

      t.timestamps
    end
  end
end
