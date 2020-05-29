class CreateAnimals < ActiveRecord::Migration[6.0]
  def change
    create_table :animals do |t|
      t.string :name, null: false
      t.integer :age, null: false
      t.text :extra_information
      t.string :state, null: false
      t.string :city, null: false
      t.integer :status, null: false
      t.string :name_finder
      t.string :phone_number_finder
      t.references :user,  foreign_key: true

      t.timestamps
    end
  end
end
