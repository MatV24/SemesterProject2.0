class CreateFaculties < ActiveRecord::Migration[5.2]
  def change
    create_table :faculties do |t|
      t.string :Lastname
      t.string :Firstname
      t.string :Ttitle
      t.string :Email
      t.string :Phone

      t.timestamps
    end
  end
end
