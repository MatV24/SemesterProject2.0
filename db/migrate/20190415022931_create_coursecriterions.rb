class CreateCoursecriterions < ActiveRecord::Migration[5.2]
  def change
    create_table :coursecriterions do |t|
      t.integer :Exceed
      t.integer :Accept
      t.integer :Poor

      t.timestamps
    end
  end
end
