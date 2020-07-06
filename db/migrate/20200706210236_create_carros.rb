class CreateCarros < ActiveRecord::Migration[6.0]
  def change
    create_table :carros do |t|
      t.string :marca
      t.string :modelo
      t.integer :km, null: false, default: 0
      t.integer :tipo, null: false, default: 0
      t.integer :portas, null: false, default: 0
      t.string :matricula
      t.string :cor
      t.integer :combustivel, null: false, default: 0
      t.decimal :preco, null: false, default: 0
      t.decimal :lucro, null: false, default: 0
      t.boolean :disponivel, null: false, default: true
      t.text :descricao

      t.timestamps
    end
  end
end
