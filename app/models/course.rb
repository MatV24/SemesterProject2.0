class Course < ApplicationRecord
  has_many :coursecriterions
  has_many :criterion, through: :coursecriterions

  def self.import(file)
    CSV.foreach(file.path,headers: true) do |row|
      Course.create! row.to_hash

    end
    end
end