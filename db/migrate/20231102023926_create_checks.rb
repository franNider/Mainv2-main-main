class CreateChecks < ActiveRecord::Migration[7.1]
  def change
    create_table :checks do |t|
      t.string :perro
      t.string :descripcion
      t.integer :dia
      t.integer :año
      t.integer :mes
      t.timestamps
    end
  end
end
