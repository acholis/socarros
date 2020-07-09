class CreateInteresses < ActiveRecord::Migration[6.0]
  def change
    create_table :interesses do |t|
      t.string :nome
      t.string :telefone
      t.decimal :proposta, null: false, default: 0
      t.datetime :visita
      t.references :carro, null: false, foreign_key: true

      t.timestamps
    end
  end
end
