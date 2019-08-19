class User < ApplicationRecord
            # Include default devise modules.
        devise :database_authenticatable, :registerable,
                :recoverable, :rememberable, :trackable, :validatable,
                :confirmable
        include DeviseTokenAuth::Concerns::User
    has_many :user_chats
    has_many :chats, through: :user_chats
    has_many :messages
end
