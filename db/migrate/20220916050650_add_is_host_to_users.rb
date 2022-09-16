class AddIsHostToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :is_host, :boolean, :default => false
  end
end
