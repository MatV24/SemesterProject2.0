class CreateCourseevaluations < ActiveRecord::Migration[5.2]
  def change
    create_table :courseevaluations do |t|
      t.integer :criteriathreshold
      t.references :course, foreign_key: true
      t.references :faculty, foreign_key: true
      t.references :criterion, foreign_key: true

      t.timestamps
    end
  end
end
