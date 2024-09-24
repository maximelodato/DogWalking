class CreateDogs < ActiveRecord::Migration[6.0]
  def change
    create_table :dogs do |t|
      t.string :name, null: false
      t.references :city, null: false, foreign_key: true

      t.timestamps
    end
  end
end