class CreateDogs < ActiveRecord::Migration[7.1]
  def change
    create_table :dogs do |t|
      t.string :nombre
      t.string :raza
      t.string :sexo
      t.string :color
      t.string :vacunas
      t.string :chequeos
      t.float :peso
      t.integer :edad

      t.timestamps
    end
  end
end
