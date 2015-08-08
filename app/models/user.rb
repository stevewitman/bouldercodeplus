class User < ActiveRecord::Base

  has_many :memberships, dependent: :destroy
  has_many :activities, through: :memberships

  def self.create_with_omniauth(auth)
    create! do |user|
      user.provider = auth["provider"]
      user.uid = auth["uid"]
      user.name = auth["info"]["name"]
      user.photo_url = auth["info"]["photo_url"]
    end
  end

end
