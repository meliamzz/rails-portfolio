class AddAndRemoveColumnsToProject < ActiveRecord::Migration[6.1]
  def change
    remove_column :projects, :feature1
    remove_column :projects, :feature2
    remove_column :projects, :feature3
  end
end
