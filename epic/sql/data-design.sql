drop table if exists post;
drop table if exists subreddit;
drop table if exists user;

		create table user (
		userId binary(16) not null,
		userEmail varchar(128) not null,
		userKarma varchar(32) not null,
		index(userId),
		primary key(userId)
		);


create table subreddit (
	subredditId binary(16) not null,
	subredditDetails blob not null,
	subredditRules blob not null,
	subredditUserId binary(16) not null,
	primary key(SubredditId),
	foreign key(subredditUserId) references user(userId)
);

create table post (
	postId binary(16) not null,
	postUserId binary(16) not null,
	postSubredditId binary(16),
	postContent blob not null,
	postDate datetime not null,
	postTitle varchar(128) not null,
	primary key(postId),
	foreign key(postSubredditId) references subreddit(subredditId),
	foreign key(PostUserId) references user(userId)

);