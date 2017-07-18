class User < ApplicationRecord
  has_and_belongs_to_many :friendships,
      class_name: "User",
      join_table:  :friendships,
      foreign_key: :user_id,
      association_foreign_key: :friend_user_id
  has_and_belongs_to_many :bookmarks
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :omniauthable, :omniauth_providers => [:facebook]

  acts_as_taggable # Alias for acts_as_taggable_on :tags
  acts_as_taggable_on :skills, :interests


  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.email = auth.info.email
      # user.password = Devise.friendly_token[0,20]
      user.name = auth.info.name   # assuming the user model has a name
      # user.image = auth.info.image # assuming the user model has an image
      # If you are using confirmable and the provider(s) you use validate emails,
      # uncomment the line below to skip the confirmation emails.
      # user.skip_confirmation!
    end
  end

  def create_from_facebook
    User.create(name)
  end
  def add_friend(friend)
     if current_user.friendships.include? friend
       flash[:notice] = "User is Already in your Friends List"
       redirect_to(:back)
     else
       current_user.friendships << friend_being_added
       redirect_to(:back)
     end
   end

  def remove_friend
  end
end
