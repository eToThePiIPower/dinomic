class CreateProjectNeeds < ActiveRecord::Migration[5.1]
  def change
    create_table :project_needs do |t|
      t.belongs_to :project, foreign_key: true
      t.belongs_to :need, foreign_key: true

      t.timestamps
    end
  end
end
