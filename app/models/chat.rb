class Chat < ApplicationRecord
    has_many :user_chats
    has_many :users, through: :user_chats
    has_many :messages
    belongs_to :topic

end
