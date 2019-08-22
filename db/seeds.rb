puts 'Seeding...'
User.destroy_all
Chat.destroy_all
UserChat.destroy_all
Message.destroy_all

user1 = User.create(email: 'shujaat@test.com', password: 'password', name: "Shujaat Azim", age: 31, location: "Potomac, MD", reputation: 20, image: "https://robohash.org/shu@test.com")
user2 = User.create(email: 'nicholas@test.com', password: 'password', name: "Nicholas Orochena", age: 25, location: "Potomac, MD", reputation: 14, image: "https://robohash.org/nicholas@test.com")
user3 = User.create(email: 'marcus@test.com', password: 'password', name: "Marcus Orochena", age: 31, location: "Potomac, MD", reputation: 10, image: "https://robohash.org/marcus@test.com")
user4 = User.create(email: 'omar@test.com', password: 'password', name: "Omar Ayyub", age: 30, location: "Washington, DC", reputation: 17, image: "https://robohash.org/omar@test.com")
user5 = User.create(email: 'joseph@test.com', password: 'password', name: "Joseph Arias", age: 26, location: "Manassas, VA", reputation: 12, image: "https://robohash.org/joseph@test.com")
user6 = User.create(email: 'jenny@test.com', password: 'password', name: "Jenny Ingram", age: 32, location: "Arlington, VA", reputation: 18, image: "https://robohash.org/jenny@test.com")

topic1 = Topic.create(name: "Stem Cell Research")
topic2 = Topic.create(name: "Gun Control")
topic3 = Topic.create(name: "Planned Parenthood")
topic4 = Topic.create(name: "The Wall")
topic5 = Topic.create(name: "Healthcare for All")
topic6 = Topic.create(name: "Bernie Sanders")


chat1 = Chat.create(topic: topic1)
chat2 = Chat.create(topic: topic2)
chat3 = Chat.create(topic: topic3)
chat4 = Chat.create(topic: topic3)
chat5 = Chat.create(topic: topic1)
chat6 = Chat.create(topic: topic4)
chat7 = Chat.create(topic: topic5)
chat8 = Chat.create(topic: topic6)
chat9 = Chat.create(topic: topic6)
chat10 = Chat.create(topic: topic6)

user_chat1 = UserChat.create(user_id: user1.id, chat_id: chat1.id)
user_chat2 = UserChat.create(user_id: user2.id, chat_id: chat1.id)
user_chat3 = UserChat.create(user_id: user3.id, chat_id: chat2.id)
user_chat4 = UserChat.create(user_id: user4.id, chat_id: chat2.id)
user_chat5 = UserChat.create(user_id: user5.id, chat_id: chat3.id)
user_chat6 = UserChat.create(user_id: user6.id, chat_id: chat3.id)
user_chat7 = UserChat.create(user_id: user1.id, chat_id: chat4.id)
user_chat8 = UserChat.create(user_id: user6.id, chat_id: chat4.id)
user_chat9 = UserChat.create(user_id: user2.id, chat_id: chat5.id)
user_chat10 = UserChat.create(user_id: user5.id, chat_id: chat5.id)
user_chat11 = UserChat.create(user_id: user3.id, chat_id: chat6.id)
user_chat12 = UserChat.create(user_id: user4.id, chat_id: chat6.id)
user_chat13 = UserChat.create(user_id: user2.id, chat_id: chat7.id)
user_chat14 = UserChat.create(user_id: user6.id, chat_id: chat7.id)
user_chat15 = UserChat.create(user_id: user3.id, chat_id: chat8.id)
user_chat16 = UserChat.create(user_id: user5.id, chat_id: chat8.id)
user_chat17 = UserChat.create(user_id: user1.id, chat_id: chat9.id)
user_chat18 = UserChat.create(user_id: user4.id, chat_id: chat9.id)
user_chat19 = UserChat.create(user_id: user6.id, chat_id: chat10.id)
user_chat20 = UserChat.create(user_id: user3.id, chat_id: chat10.id)


message1 = Message.create(content: "stem cells are the best", chat_id: chat1.id, user_id: user1.id)
message2 = Message.create(content: "idk man seems like baby killing", chat_id: chat1.id, user_id: user2.id)
message3 = Message.create(content: "we need to get rid of 2nd amendment", chat_id: chat2.id, user_id: user3.id)
message4 = Message.create(content: "but then only baddies will have guns", chat_id: chat2.id, user_id: user4.id)
message5 = Message.create(content: "planned parenthood is great for women", chat_id: chat3.id, user_id: user5.id)
message6 = Message.create(content: "but they don't need my tax money", chat_id: chat3.id, user_id: user6.id)

message7 = Message.create(content: "planned parenthood is great for women", chat_id: chat4.id, user_id: user1.id)
message8 = Message.create(content: "but they don't need my tax money", chat_id: chat4.id, user_id: user6.id)
message9 = Message.create(content: "stem cells are like magic for humans", chat_id: chat5.id, user_id: user2.id)
message10 = Message.create(content: "but they are from babies... :(", chat_id: chat5.id, user_id: user5.id)
message11 = Message.create(content: "we don't need the wall, it's too expensive", chat_id: chat6.id, user_id: user3.id)
message12 = Message.create(content: "yes we do, it will stem illegal immigration", chat_id: chat6.id, user_id: user4.id)

message13 = Message.create(content: "wouldn't hc for all be too expensive?", chat_id: chat7.id, user_id: user2.id)
message14 = Message.create(content: "not as expensive as people too poor for treatment", chat_id: chat7.id, user_id: user6.id)
message15 = Message.create(content: "bernie rocks! he will usher in a new era!", chat_id: chat8.id, user_id: user3.id)
message16 = Message.create(content: "idk, he might be too radical and turn people off", chat_id: chat8.id, user_id: user5.id)
message17 = Message.create(content: "bernie is the best of the lot, as far as I see it", chat_id: chat9.id, user_id: user1.id)
message18 = Message.create(content: "but that's not enough to be president", chat_id: chat9.id, user_id: user4.id)
message11 = Message.create(content: "anyone but trump, honestly", chat_id: chat10.id, user_id: user6.id)
message11 = Message.create(content: "that's fair, but there's over 10 others then", chat_id: chat10.id, user_id: user3.id)

puts "Done!"