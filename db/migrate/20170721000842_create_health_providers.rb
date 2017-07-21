class CreateHealthProviders < ActiveRecord::Migration[5.1]
  def change
    create_table :health_providers do |t|
      t.string :facility_name
      t.string :address
      t.string :email
      t.string :password_digest
      t.string :webpage
      t.text :about_us
      t.string :phone

      t.timestamps
    end
  end
end
