class User < ApplicationRecord
  def self.from_omniauth(auth)
    User.where(github_uid: auth.uid).first_or_create do |new_user|
      new_user.name         = auth.info.name
      new_user.github_uid   = auth.uid
      new_user.github_token = auth.credentials.token
    end
  end
end
