class CreateDonors < ActiveRecord::Migration[5.1]
  def change
    create_table :donors do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :password_digest
      t.string :zipcode
      t.string :phone
      t.string :bloodtype

      t.timestamps
    end
  end
end
