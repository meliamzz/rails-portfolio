class AddColumnToProjects < ActiveRecord::Migration[6.1]
  def change
    add_column :projects, :description, :text
    add_column :projects, :feature1, :text
    add_column :projects, :feature2, :text
    add_column :projects, :feature3, :text
  end
end
