class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :nombre
      t.text :descripcion
      t.bigint :precio
      t.string :src

      t.timestamps
    end
  end
end
