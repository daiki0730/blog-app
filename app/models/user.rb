class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :posts, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :liked_posts, through: :likes, source: :post

  def already_liked?(post)
    self.likes.exists?(post_id: post.id)
  end

  def self.find_for_oauth(auth)
   user = User.where(uid: auth.uid, provider: auth.provider).first

   unless user
     user = User.create(
       uid:      auth.uid,
       provider: auth.provider,
       email:    User.dummy_email(auth),
       password: Devise.friendly_token[0, 20],
       nickname: auth.info.nickname,
       )
   end

   user
  end

  private

  def self.dummy_email(auth)
   "#{auth.uid}-#{auth.provider}@example.com"
  end

end
