class User < ApplicationRecord
  has_many :user_groups
  has_many :groups, through: :user_groups

  def team_members(group_id)
    groups.find(group_id).users.where.not(id: self.id)
  end

  def self.from_omniauth(auth)
    User.where(github_uid: auth.uid).first_or_create do |new_user|
      new_user.name         = auth.info.name
      new_user.github_uid   = auth.uid
      new_user.github_token = auth.credentials.token
    end
  end
end
