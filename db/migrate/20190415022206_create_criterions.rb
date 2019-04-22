class CreateCriterions < ActiveRecord::Migration[5.2]
  def change
    create_table :criterions do |t|
      t.string :Title
      t.string :Description

      t.timestamps
    end
  end
end
