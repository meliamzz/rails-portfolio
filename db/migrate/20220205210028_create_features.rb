class CreateFeatures < ActiveRecord::Migration[6.1]
  def change
    create_table :features do |t|
      t.string :description

      t.timestamps
    end
  end
end
