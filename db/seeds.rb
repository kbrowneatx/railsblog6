# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

u1 = User.create(name:'MalJr', email:'maljr@fireflyforum.net', bio:'Watched all episodes 10x', role:'author', twitter:'Fake_Malcolm', website:'http://www.fireflyforum.net', postanonymously: false)
u2 = User.create(name:'NotWash', email:'notwash@fireflyforum.net', bio:'Watched all episodes 10x more than FakeMal', role:'author', twitter:'Fake_AlanTudyk', website:'http://www.fireflyforum.net', postanonymously: false)
u3 = User.create(name:'troll247', email:'troll247@aol.com', bio:'UNDERSTOOD all episodes', role:'reader', postanonymously: false)
u4 = User.create(name:'SilentSteve', email:'steve@bloc.io', role:'reader', postanonymously: true)
u5 = User.create(name:'InaraSera', email:'inara@fireflyforum.net', bio:'Prettiest of the bunch', role:'author', twitter:'FakeCompanion', website:'http://www.fireflyforum.net', postanonymously: false)
u6 = User.create(name:'River', email:'river_not@gmail.com', bio:'Only watched episodes featuring River (both of them)', role:'reader', twitter:'TheNotRiver', website:'http://www.fireflyforum.net', postanonymously: false)
u7 = User.create(name:'GeorgeJetson', email:'georgej@hotmail.com', role:'reader', postanonymously: false)
u8 = User.create(name:'SweetBabyJames', email:'sweetbabyj@hotmail.com', role:'reader', postanonymously: false)
u9 = User.create(name:'FortuneTeller', email:'sutra@gmail.com', role:'reader', postanonymously: false)
u10 = User.create(name:'wrongwaywarren', email:'warren@aol.com', role:'reader', postanonymously: false)

p1 = Post.create(title:'Welcome to the Forum', content:'It has been over a decade since the suits heartlessly cancelled the best show on TV. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', user_id: 1)
p2 = Post.create(title:'Second Post', content:'I cannot believe the show is still cancelled. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', user_id: 2)
p3 = Post.create(title:'Firefly at Comicon', content:'We have been scanning the interwebs looking for signs of life and we have found one. Nathan Fillion - our Mal Reynolds - will be appearing at Comicon! Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', user_id: 1)
p4 = Post.create(title:'To delete', content:'Creating one to test deletion', user_id: 1)

c = p1.comments.create(content:'You are wrong. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.', user_id: 3)
c = p1.comments.create(content:'No, I am right. Quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate!', user_id: 1)
c = p1.comments.create(content:'You are a total moron. Velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit.', user_id: 3)
c = p1.comments.create(content:'Hey, troll247, pls keep it civil.', user_id: 4)
c = p1.comments.create(content:'Your a moron too', user_id: 3)
c = p1.comments.create(content:'I would ask you to keep a civil tongue -- or lose it.', user_id: 4)
c = p1.comments.create(content:'What, you gonna make me?', user_id: 3)
c = p1.comments.create(content:'troll247, I will physically kill you', user_id: 4)
c = p1.comments.create(content:'Sounds good to me - throw down!', user_id: 5)
c = p1.comments.create(content:'No, I will peel your eyeballs and piss in your nostrils', user_id: 4)
c = p1.comments.create(content:'Where you at? I will drive there right now', user_id: 3)
c = p1.comments.create(content:'I will rip out your eyes and skull hump you', user_id: 4)

c2 = p2.comments.create(content:'Hey, deal with it.', user_id: 3)
c2 = p2.comments.create(content:'Hey, troll247, pls keep it civil.', user_id: 2)
c2 = p2.comments.create(content:'Shut up, crybaby.', user_id: 6)

c3 = p3.comments.create(content:'Are you sure he is there for Firefly? Maybe he is doing Halo again...', user_id: 2)
c4 = p3.comments.create(content:'Yeah, I played that Halo game where he was the voice of the main character.', user_id: 8)