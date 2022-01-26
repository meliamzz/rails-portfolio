class AddColumnToProject < ActiveRecord::Migration[6.1]
  def change
    add_column :projects, :img_folder, :string
  end
end
