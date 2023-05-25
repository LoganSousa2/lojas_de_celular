class CreateFornecedors < ActiveRecord::Migration[6.1]
  def change
    create_table :fornecedors do |t|
      t.string :nome
      t.integer :cpf_cnpj
      t.string :email
      t.string :telefone
      t.string :endereco
      t.string :cidade
      t.string :estado

      t.timestamps
    end
  end
end
