class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :company_name
      t.string :company_website
      t.string :position
      t.string :experience
      t.string :location
      t.string :ad_expires_on
      t.string :qualification
      t.string :contact_name
      t.string :contact_email
      t.string :contact_number
      t.text :responsibility
      t.text :skill

      t.timestamps
    end
  end
end
