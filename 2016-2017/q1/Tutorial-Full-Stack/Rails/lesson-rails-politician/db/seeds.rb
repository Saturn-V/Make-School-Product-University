Politician.delete_all
puts "Deleted all former Politicians. Now re-adding..."
Politician.create(name: "Hillary Clinton", party:"democrat")
Politician.create(name: "Bernie Sanders", party:"democrat")
Politician.create(name: "Tim Kaine", party:"democrat")
Politician.create(name: "Donald Trump", party:"republican")
Politician.create(name: "Mike Pence", party:"republican")
Politician.create(name: "Jeb Bush", party:"republican")
puts "Seeding complete. The DB now contains #{Politician.count} Politicians."

Event.delete_all
puts "Deleted all former Events. Now re-adding..."
Event.create(title: "Luca Hagel Meetup", capacity: 1)
Event.create(title: "Nintendo Q&A", capacity: 50)
Event.create(title: "Make School Games", capacity: 50)
Event.create(title: "Corey Swag Meetup", capacity: 21)
Event.create(title: "Andy's Office Hours", capacity: 4)
Event.create(title: "GitHub Tour", capacity: 50)
puts "Seeding complete. The DB now contains #{Event.count} Events."
