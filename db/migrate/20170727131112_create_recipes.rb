class CreateRecipes < ActiveRecord::Migration[5.1]
  def change
    create_table :recipes do |t|
      t.string :title, null: false
      t.text :image
      t.string :description, null: false
      t.timestamps
    end
  end
end
