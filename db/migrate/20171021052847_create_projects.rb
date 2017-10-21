class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.references :organization, foreign_key: true
      t.string :title
      t.string :location

      t.timestamps
    end
  end
end
