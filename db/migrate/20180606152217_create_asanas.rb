class CreateAsanas < ActiveRecord::Migration[5.2]
  def change
    create_table :asanas do |t|
      t.string :sanskrit_name
      t.string :name
      t.integer :asana_order, null: false, default: 5
      t.text :introduction
      t.text :technique
      t.text :variation
      t.text :concentration
      t.text :afterward
      t.string :slug, null: false


      t.timestamps
    end
    add_index :asanas, :slug, unique: true
  end
end
