class Courseevaluation < ApplicationRecord
  belongs_to :course
  belongs_to :faculty
  belongs_to :criterion
end
