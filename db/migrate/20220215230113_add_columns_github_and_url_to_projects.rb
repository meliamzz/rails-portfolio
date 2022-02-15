class AddColumnsGithubAndUrlToProjects < ActiveRecord::Migration[6.1]
  def change
    add_column :projects, :github, :string
    add_column :projects, :url, :string
  end
end
