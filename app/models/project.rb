class Project < ApplicationRecord
  has_many :groups
  has_many :questions
end
