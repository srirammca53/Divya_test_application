class CreatePatientAttachments < ActiveRecord::Migration
  def change
    create_table :patient_attachments do |t|
      t.integer :patient_id
      t.string :avatar

      t.timestamps null: false
    end
  end
end
