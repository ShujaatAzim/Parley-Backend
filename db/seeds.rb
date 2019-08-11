
User.destroy_all
Chat.destroy_all
UserChat.destroy_all
Message.destroy_all

user1 = User.create(name: "Shu Azim", age: 31, location: "Potomac, MD", reputation: 20)
user2 = User.create(name: "Nicholas Orochena", age: 25, location: "Potomac, MD", reputation: 14)
user3 = User.create(name: "Marcus Orochena", age: 31, location: "Potomac, MD", reputation: 10)
user4 = User.create(name: "Omar Ayyub", age: 30, location: "Washington, DC", reputation: 17)
user5 = User.create(name: "Joseph Arias", age: 26, location: "Centerville, VA", reputation: 12)
user6 = User.create(name: "Jenny Ingram", age: 32, location: "Washington, DC", reputation: 18)

chat1 = Chat.create()
chat2 = Chat.create()
chat3 = Chat.create()

user_chat1 = UserChat.create(user_id: user1.id, chat_id: chat1.id)
user_chat2 = UserChat.create(user_id: user2.id, chat_id: chat1.id)
user_chat3 = UserChat.create(user_id: user3.id, chat_id: chat2.id)
user_chat4 = UserChat.create(user_id: user4.id, chat_id: chat2.id)
user_chat5 = UserChat.create(user_id: user5.id, chat_id: chat3.id)
user_chat6 = UserChat.create(user_id: user6.id, chat_id: chat3.id)

message1 = Message.create(content: "what's up", chat_id: chat1.id, user_id: user1.id)
message2 = Message.create(content: "nm hbu?", chat_id: chat1.id, user_id: user2.id)
message3 = Message.create(content: "pc gaming", chat_id: chat2.id, user_id: user3.id)
message4 = Message.create(content: "stop saying that", chat_id: chat2.id, user_id: user4.id)
message5 = Message.create(content: "time for feelings", chat_id: chat3.id, user_id: user5.id)
message6 = Message.create(content: "in borg, not turing", chat_id: chat3.id, user_id: user6.id)