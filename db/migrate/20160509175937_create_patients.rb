class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :first_name
      t.string :last_name
      t.string :middle_name
      t.date :date_of_birth
      t.integer :age
      t.text :address
      t.string :phone_number
      t.string :care_Specialization

      t.timestamps null: false
    end
  end
end
