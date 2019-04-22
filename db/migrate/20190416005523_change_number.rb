class ChangeNumber < ActiveRecord::Migration[5.2]
  def change
    change_column :courseevaluations, :criteriathreshold, :integer
  end
end
