class CreateClientes < ActiveRecord::Migration[6.1]
  def change
    create_table :clientes do |t|
      t.string :nome
      t.string :cpf
      t.string :email
      t.string :telefone
      t.string :endereco

      t.timestamps
    end
  end
end
