class CreateRawMaterials < ActiveRecord::Migration[5.1]
  def change
    create_table :raw_materials do |t|
      t.string :material
      t.string :quantity
      t.references :recipe, foreign_key: true
      t.timestamps
    end
  end
end
