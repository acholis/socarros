class CreateQueroCarros < ActiveRecord::Migration[6.0]
  def change
    create_table :quero_carros do |t|
      t.string :marca
      t.string :modelo
      t.decimal :preco
      t.string :nome
      t.string :telefone
      t.text :descricao

      t.timestamps
    end
  end
end
