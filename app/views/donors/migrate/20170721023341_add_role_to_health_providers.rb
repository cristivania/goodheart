class AddRoleToHealthProviders < ActiveRecord::Migration[5.1]
  def change
    add_column :health_providers, :role, :string, :default => "health_provider"
  end
end
