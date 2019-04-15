class CreateCriteria < ActiveRecord::Migration[5.2]
  def change
    create_table :criteria do |t|
      t.string :Name
      t.string :Description

      t.timestamps
    end
  end
end
