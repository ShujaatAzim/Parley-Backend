class User < ApplicationRecord
    devise :database_authenticatable, :registerable,
            :recoverable, :rememberable, :trackable, :validatable


    has_many :user_chats
    has_many :chats, through: :user_chats
    has_many :messages

    include DeviseTokenAuth::Concerns::User

end
