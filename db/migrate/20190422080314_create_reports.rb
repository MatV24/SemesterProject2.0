class CreateReports < ActiveRecord::Migration[5.2]
  def change
    create_table :reports do |t|
      t.integer :max
      t.integer :min
      t.integer :mean
      t.references :courseevaluation, foreign_key: true

      t.timestamps
    end
  end
end
