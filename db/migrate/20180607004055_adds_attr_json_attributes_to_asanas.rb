class AddsAttrJsonAttributesToAsanas < ActiveRecord::Migration[5.2]
  def change
    add_column :asanas, :json_attributes, :jsonb
    add_index :asanas, :json_attributes, using: :gin
  end
end
