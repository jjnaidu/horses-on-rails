class CreateHorses < ActiveRecord::Migration[5.0]
  def change
    create_table :horses do |t|
      t.string :name, { null: false }
      t.string :breed, { null: false }
      t.integer :age, { null: false }
      t.references :user

      t.timestamps
    end
  end
end
