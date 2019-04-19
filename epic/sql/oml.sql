/**Keep dem hexadecimals straight, yall. seems like a pain to find em after the fact.

	userId: 58ac3ddc91654c79adfad4e992270fb7
	subredditId: bcfca9d070184f1f9f7e08af2674b855
	postId: c88477186d644bf7b0de8033ab47e539
*/

insert into user(userId, userEmail, userKarma)
values (unhex("58ac3ddc91654c79adfad4e992270fb7"), "jontullyataol.com", "4234");

insert into subreddit(subredditId, subredditDetails, subredditRules, subredditUserId)
values (unhex("bcfca9d070184f1f9f7e08af2674b855"), "Tesla hobbyists encouraged", "norules", unhex("58ac3ddc91654c79adfad4e992270fb7"));

insert into post(postId, postUserId, postSubredditId, postContent, postDate, postTitle)
values (unhex("c88477186d644bf7b0de8033ab47e539"), unhex("58ac3ddc91654c79adfad4e992270fb7"), unhex("bcfca9d070184f1f9f7e08af2674b855"), "I like Tesla", "2019-01-06 08:11:32", "My Post");

update user set userKarma = "4583" where userKarma = "4234";

delete from post where postId = unhex("c88477186d644bf7b0de8033ab47e539");

insert into post(postId, postUserId, postSubredditId, postContent, postDate, postTitle)
values (unhex("c88477186d644bf7b0de8033ab47e539"), unhex("58ac3ddc91654c79adfad4e992270fb7"), unhex("bcfca9d070184f1f9f7e08af2674b855"), "I like Tesla a whole heck of a lot", "2019-01-08 08:11:32", "My Re-Post");

select postId from post where postId=(hex("c88477186d644bf7b0de8033ab47e539"));

select post.postSubredditId, subreddit.subredditId
from post inner join subreddit
on post.postSubredditId = subreddit.subredditId
where post.postSubredditId = true;