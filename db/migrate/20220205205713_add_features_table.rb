class AddFeaturesTable < ActiveRecord::Migration[6.1]
  def change
    create_table :features do |t|
      t.string :description
      t.references :project, foreign_key: true
    end

  end
end
