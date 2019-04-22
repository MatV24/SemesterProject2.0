class DropTableCriteria < ActiveRecord::Migration[5.2]
  def change
    drop_table :criteria

  end
end
