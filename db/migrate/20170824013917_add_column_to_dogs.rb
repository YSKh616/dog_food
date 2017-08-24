class AddColumnToDogs < ActiveRecord::Migration[5.1]
  def change
    add_column :dogs, :allergy, :text
    add_column :dogs, :medicalhistory, :text
  end
end
