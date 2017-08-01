class CreateDogs < ActiveRecord::Migration[5.1]
  def change
    create_table :dogs do |t|
      t.string    :name
      t.integer   :age
      t.string    :type
      t.string    :sex
      t.text      :image
      t.references   :user, foreign_key: true
      t.timestamps
    end
  end
end
