class Topic < ApplicationRecord
    has_many :chats, -> { where(inactive: false) }
end
