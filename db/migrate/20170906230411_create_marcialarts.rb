class CreateMarcialarts < ActiveRecord::Migration
  def change
    create_table :marcialarts do |t|
      t.string :nombre
      t.string :dominio
      t.string :origen
      t.text :aplica
      t.string :link
      t.string :image

      t.timestamps null: false
    end
  end
end
