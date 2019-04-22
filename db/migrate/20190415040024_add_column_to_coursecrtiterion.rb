class AddColumnToCoursecrtiterion < ActiveRecord::Migration[5.2]
  def change
    add_column :coursecriterions, :course_id, :integer
    add_column :coursecriterions, :criterion_id, :integer
  end
end
