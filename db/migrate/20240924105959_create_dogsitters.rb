class CreateDogsitters < ActiveRecord::Migration[6.0]
  def change
    create_table :dogsitters do |t|
      t.string :name, null: false
      t.references :city, null: false, foreign_key: true

      t.timestamps
    end
  end
end