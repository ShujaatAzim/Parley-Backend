
User.destroy_all
Chat.destroy_all
UserChat.destroy_all
Message.destroy_all

user1 = User.create(username: "Shu Azim", age: 31, location: "Potomac", reputation: 5)
user2 = User.create(username: "Nicholas Orochena", age: 25, location: "Potomac", reputation: 4)

chat1 = Chat.create()

user_chat1 = UserChat.create(user_id: user1.id, chat_id: chat1.id)
user_chat2 = UserChat.create(user_id: user2.id, chat_id: chat1.id)

message1 = Message.create(content: "what's up", chat_id: chat1.id)
message2 = Message.create(content: "nm hbu?", chat_id: chat1.id)