class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :username, :email, :encrypted_password, presence: true
  validates :username, :email, uniqueness: true

  has_many :posts, class_name: "Post", foreign_key: "author_id"
end
