class CreateCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :courses do |t|
      t.string :Name
      t.string :Number

      t.timestamps
    end
  end
end
