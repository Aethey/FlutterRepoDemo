import 'package:flutter_git_repo_demo/generated/json/base/json_convert_content.dart';
import 'package:flutter_git_repo_demo/generated/json/base/json_field.dart';

class IssueEntity with JsonConvert<IssueEntity> {
	late String url;
	@JSONField(name: "repository_url")
	late String repositoryUrl;
	@JSONField(name: "labels_url")
	late String labelsUrl;
	@JSONField(name: "comments_url")
	late String commentsUrl;
	@JSONField(name: "events_url")
	late String eventsUrl;
	@JSONField(name: "html_url")
	late String htmlUrl;
	late double id;
	@JSONField(name: "node_id")
	late String nodeId;
	late double number;
	late String title;
	late IssueUser user;
	late List<IssueLabels> labels;
	late String state;
	late bool locked;
	late IssueAssignee assignee;
	late List<dynamic> assignees;
	late dynamic milestone;
	late double comments;
	@JSONField(name: "created_at")
	late String createdAt;
	@JSONField(name: "updated_at")
	late String updatedAt;
	@JSONField(name: "closed_at")
	late dynamic closedAt;
	@JSONField(name: "author_association")
	late String authorAssociation;
	@JSONField(name: "active_lock_reason")
	late dynamic activeLockReason;
	@JSONField(name: "pull_request")
	late IssuePullRequest pullRequest;
	late String body;
	@JSONField(name: "performed_via_github_app")
	late dynamic performedViaGithubApp;
}

class IssueUser with JsonConvert<IssueUser> {
	late String login;
	late double id;
	@JSONField(name: "node_id")
	late String nodeId;
	@JSONField(name: "avatar_url")
	late String avatarUrl;
	@JSONField(name: "gravatar_id")
	late String gravatarId;
	late String url;
	@JSONField(name: "html_url")
	late String htmlUrl;
	@JSONField(name: "followers_url")
	late String followersUrl;
	@JSONField(name: "following_url")
	late String followingUrl;
	@JSONField(name: "gists_url")
	late String gistsUrl;
	@JSONField(name: "starred_url")
	late String starredUrl;
	@JSONField(name: "subscriptions_url")
	late String subscriptionsUrl;
	@JSONField(name: "organizations_url")
	late String organizationsUrl;
	@JSONField(name: "repos_url")
	late String reposUrl;
	@JSONField(name: "events_url")
	late String eventsUrl;
	@JSONField(name: "received_events_url")
	late String receivedEventsUrl;
	late String type;
	@JSONField(name: "site_admin")
	late bool siteAdmin;
}

class IssueLabels with JsonConvert<IssueLabels> {
	late double id;
	@JSONField(name: "node_id")
	late String nodeId;
	late String url;
	late String name;
	late String color;
	@JSONField(name: "default")
	late bool xDefault;
	late String description;
}

class IssueAssignee with JsonConvert<IssueAssignee> {
	late String login;
	late double id;
	@JSONField(name: "node_id")
	late String nodeId;
	@JSONField(name: "avatar_url")
	late String avatarUrl;
	@JSONField(name: "gravatar_id")
	late String gravatarId;
	late String url;
	@JSONField(name: "html_url")
	late String htmlUrl;
	@JSONField(name: "followers_url")
	late String followersUrl;
	@JSONField(name: "following_url")
	late String followingUrl;
	@JSONField(name: "gists_url")
	late String gistsUrl;
	@JSONField(name: "starred_url")
	late String starredUrl;
	@JSONField(name: "subscriptions_url")
	late String subscriptionsUrl;
	@JSONField(name: "organizations_url")
	late String organizationsUrl;
	@JSONField(name: "repos_url")
	late String reposUrl;
	@JSONField(name: "events_url")
	late String eventsUrl;
	@JSONField(name: "received_events_url")
	late String receivedEventsUrl;
	late String type;
	@JSONField(name: "site_admin")
	late bool siteAdmin;
}

class IssuePullRequest with JsonConvert<IssuePullRequest> {
	late String url;
	@JSONField(name: "html_url")
	late String htmlUrl;
	@JSONField(name: "diff_url")
	late String diffUrl;
	@JSONField(name: "patch_url")
	late String patchUrl;
}
