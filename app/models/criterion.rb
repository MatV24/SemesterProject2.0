class Criterion < ApplicationRecord
  has_many :coursecriterions
  has_many :courses, through: :coursecriterions

end