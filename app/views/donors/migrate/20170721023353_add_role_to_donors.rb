class AddRoleToDonors < ActiveRecord::Migration[5.1]
  def change
    add_column :donors, :role, :string, :default => "donor"
  end
end
