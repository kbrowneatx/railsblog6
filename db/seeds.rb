# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

u1 = User.create(name:'MalJr', email:'maljr@fireflyforum.net', bio:'Watched all episodes 10x', role:'author', twitter:'@FakeMalcolm', website:'www.fireflyforum.net', postanonymously: false)
u2 = User.create(name:'NotWash', email:'notwash@fireflyforum.net', bio:'Watched all episodes 10x more than FakeMal', role:'author', twitter:'@FakeAlanTudyk', website:'www.fireflyforum.net', postanonymously: false)
u3 = User.create(name:'troll247', email:'troll247@aol.com', bio:'UNDERSTOOD all episodes', role:'reader', postanonymously: false)
u4 = User.create(name:'SilentSteve', email:'steve@bloc.io', role:'reader', postanonymously: true)
u3.twitter = '@RealFireflyFan'
u5 = User.create(name:'InaraSera', email:'inara@fireflyforum.net', bio:'Prettiest of the bunch', role:'author', twitter:'@FakeCompanion', website:'www.fireflyforum.net', postanonymously: false)

p1 = Post.create(title:'Welcome to the Forum', content:'It has been over a decade since the suits heartlessly cancelled the best show on TV.', user_id: 1)
p2 = Post.create(title:'Second Post', content:'I cannot believe the show is still cancelled.', user_id: 2)
p3 = Post.create(title:'Firefly at Comicon', content:'We have been scanning the interwebs looking for signs of life and we have found one. Nathan Fillion - our Mal Reynolds - will be appearing at Comicon!', user_id: 1)

c1 = p1.comments.create(content:'You are wrong', user_id: 3)
c2 = p1.comments.create(content:'No, I am right', user_id: 1)
c3 = p1.comments.create(content:'You are a total moron', user_id: 3)
c4 = p1.comments.create(content:'Hey, troll247, pls keep it civil.', user_id: 4)
c5 = p3.comments.create(content:'Are you sure he is there for Firefly? Maybe he is doing Halo again...', user_id: 2)