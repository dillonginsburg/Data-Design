drop table if exists subreddit
drop table if exists post
drop table if exists user

create table user (
	userId varchar(128) not null,
	userEmail varchar(128),
	index(userId),
	primary key(userId)
);

create table subreddit (
   subredditId varchar(128) not null,
	subredditDetails varchar(2500) not null,
	subredditRules varchar(2500) not null,
	primary key(SubredditId),
	foreign key(userId) references User(User)
)

create table post (
   subredditId varchar(128) not null,
	postContent varchar(2500) not null,
	SubredditRules varchar(2500) not null,
	primary key(PostContent),
	foreign key(subredditId) references Subreddit(subredditId)
)