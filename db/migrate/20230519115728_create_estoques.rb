class CreateEstoques < ActiveRecord::Migration[6.1]
  def change
    create_table :estoques do |t|
      t.string :quantidade
      t.string :tipo
      t.string :ano
      t.string :marcas

      t.timestamps
    end
  end
end
