class AddColumnNameToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :name, :string, default: 'Guest'
  end
end
