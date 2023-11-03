class CreateVaccines < ActiveRecord::Migration[7.1]
  def change
    create_table :vaccines do |t|
      t.string :perro
      t.string :vacuna
      t.integer :dia
      t.integer :año
      t.integer :mes

      t.timestamps
    end
  end
end
