class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable,
         :rememberable, :trackable, :validatable,:omniauthable,
         :omniauthable, omniauth_providers: %i[facebook twitter google_oauth2]




  def self.find_for_oauth(auth)
    #auth.info.email = "test@test.com"
    p "=================="
    p auth.info.email
    p "=================="
    user = User.where(email: auth.info.email).first

    unless user
      user = User.create(
        name:     auth.info.name,
        uid:      auth.uid,
        provider: auth.provider,
        email:    auth.info.email,
        token:    auth.credentials.token,
        password: Devise.friendly_token[0, 20]
      )
    end
    user
  end
end
