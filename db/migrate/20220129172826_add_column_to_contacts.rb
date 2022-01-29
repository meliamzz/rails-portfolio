class AddColumnToContacts < ActiveRecord::Migration[6.1]
  def change
    add_column :contacts, :read, :boolean, default: false
  end
end
