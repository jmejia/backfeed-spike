class Response < ApplicationRecord
  belongs_to :receiver, class_name: User
  belongs_to :giver, class_name: User
  belongs_to :group
end
