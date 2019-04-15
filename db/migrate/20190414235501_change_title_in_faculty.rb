class ChangeTitleInFaculty < ActiveRecord::Migration[5.2]
  def change
    rename_column :faculties, :Ttitle, :Title
  end
end
