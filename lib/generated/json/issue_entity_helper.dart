import 'package:flutter_git_repo_demo/model/issue_entity.dart';

issueEntityFromJson(IssueEntity data, Map<String, dynamic> json) {
	if (json['url'] != null) {
		data.url = json['url'].toString();
	}
	if (json['repository_url'] != null) {
		data.repositoryUrl = json['repository_url'].toString();
	}
	if (json['labels_url'] != null) {
		data.labelsUrl = json['labels_url'].toString();
	}
	if (json['comments_url'] != null) {
		data.commentsUrl = json['comments_url'].toString();
	}
	if (json['events_url'] != null) {
		data.eventsUrl = json['events_url'].toString();
	}
	if (json['html_url'] != null) {
		data.htmlUrl = json['html_url'].toString();
	}
	if (json['id'] != null) {
		data.id = json['id'] is String
				? double.tryParse(json['id'])
				: json['id'].toDouble();
	}
	if (json['node_id'] != null) {
		data.nodeId = json['node_id'].toString();
	}
	if (json['number'] != null) {
		data.number = json['number'] is String
				? double.tryParse(json['number'])
				: json['number'].toDouble();
	}
	if (json['title'] != null) {
		data.title = json['title'].toString();
	}
	if (json['user'] != null) {
		data.user = IssueUser().fromJson(json['user']);
	}
	if (json['labels'] != null) {
		data.labels = (json['labels'] as List).map((v) => IssueLabels().fromJson(v)).toList();
	}
	if (json['state'] != null) {
		data.state = json['state'].toString();
	}
	if (json['locked'] != null) {
		data.locked = json['locked'];
	}
	if (json['assignee'] != null) {
		data.assignee = IssueAssignee().fromJson(json['assignee']);
	}
	if (json['assignees'] != null) {
		data.assignees = (json['assignees'] as List).map((v) => v).toList().cast<dynamic>();
	}
	if (json['milestone'] != null) {
		data.milestone = json['milestone'];
	}
	if (json['comments'] != null) {
		data.comments = json['comments'] is String
				? double.tryParse(json['comments'])
				: json['comments'].toDouble();
	}
	if (json['created_at'] != null) {
		data.createdAt = json['created_at'].toString();
	}
	if (json['updated_at'] != null) {
		data.updatedAt = json['updated_at'].toString();
	}
	if (json['closed_at'] != null) {
		data.closedAt = json['closed_at'];
	}
	if (json['author_association'] != null) {
		data.authorAssociation = json['author_association'].toString();
	}
	if (json['active_lock_reason'] != null) {
		data.activeLockReason = json['active_lock_reason'];
	}
	if (json['pull_request'] != null) {
		data.pullRequest = IssuePullRequest().fromJson(json['pull_request']);
	}
	if (json['body'] != null) {
		data.body = json['body'].toString();
	}
	if (json['performed_via_github_app'] != null) {
		data.performedViaGithubApp = json['performed_via_github_app'];
	}
	return data;
}

Map<String, dynamic> issueEntityToJson(IssueEntity entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['url'] = entity.url;
	data['repository_url'] = entity.repositoryUrl;
	data['labels_url'] = entity.labelsUrl;
	data['comments_url'] = entity.commentsUrl;
	data['events_url'] = entity.eventsUrl;
	data['html_url'] = entity.htmlUrl;
	data['id'] = entity.id;
	data['node_id'] = entity.nodeId;
	data['number'] = entity.number;
	data['title'] = entity.title;
	data['user'] = entity.user.toJson();
	data['labels'] =  entity.labels.map((v) => v.toJson()).toList();
	data['state'] = entity.state;
	data['locked'] = entity.locked;
	data['assignee'] = entity.assignee.toJson();
	data['assignees'] = entity.assignees;
	data['milestone'] = entity.milestone;
	data['comments'] = entity.comments;
	data['created_at'] = entity.createdAt;
	data['updated_at'] = entity.updatedAt;
	data['closed_at'] = entity.closedAt;
	data['author_association'] = entity.authorAssociation;
	data['active_lock_reason'] = entity.activeLockReason;
	data['pull_request'] = entity.pullRequest.toJson();
	data['body'] = entity.body;
	data['performed_via_github_app'] = entity.performedViaGithubApp;
	return data;
}

issueUserFromJson(IssueUser data, Map<String, dynamic> json) {
	if (json['login'] != null) {
		data.login = json['login'].toString();
	}
	if (json['id'] != null) {
		data.id = json['id'] is String
				? double.tryParse(json['id'])
				: json['id'].toDouble();
	}
	if (json['node_id'] != null) {
		data.nodeId = json['node_id'].toString();
	}
	if (json['avatar_url'] != null) {
		data.avatarUrl = json['avatar_url'].toString();
	}
	if (json['gravatar_id'] != null) {
		data.gravatarId = json['gravatar_id'].toString();
	}
	if (json['url'] != null) {
		data.url = json['url'].toString();
	}
	if (json['html_url'] != null) {
		data.htmlUrl = json['html_url'].toString();
	}
	if (json['followers_url'] != null) {
		data.followersUrl = json['followers_url'].toString();
	}
	if (json['following_url'] != null) {
		data.followingUrl = json['following_url'].toString();
	}
	if (json['gists_url'] != null) {
		data.gistsUrl = json['gists_url'].toString();
	}
	if (json['starred_url'] != null) {
		data.starredUrl = json['starred_url'].toString();
	}
	if (json['subscriptions_url'] != null) {
		data.subscriptionsUrl = json['subscriptions_url'].toString();
	}
	if (json['organizations_url'] != null) {
		data.organizationsUrl = json['organizations_url'].toString();
	}
	if (json['repos_url'] != null) {
		data.reposUrl = json['repos_url'].toString();
	}
	if (json['events_url'] != null) {
		data.eventsUrl = json['events_url'].toString();
	}
	if (json['received_events_url'] != null) {
		data.receivedEventsUrl = json['received_events_url'].toString();
	}
	if (json['type'] != null) {
		data.type = json['type'].toString();
	}
	if (json['site_admin'] != null) {
		data.siteAdmin = json['site_admin'];
	}
	return data;
}

Map<String, dynamic> issueUserToJson(IssueUser entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['login'] = entity.login;
	data['id'] = entity.id;
	data['node_id'] = entity.nodeId;
	data['avatar_url'] = entity.avatarUrl;
	data['gravatar_id'] = entity.gravatarId;
	data['url'] = entity.url;
	data['html_url'] = entity.htmlUrl;
	data['followers_url'] = entity.followersUrl;
	data['following_url'] = entity.followingUrl;
	data['gists_url'] = entity.gistsUrl;
	data['starred_url'] = entity.starredUrl;
	data['subscriptions_url'] = entity.subscriptionsUrl;
	data['organizations_url'] = entity.organizationsUrl;
	data['repos_url'] = entity.reposUrl;
	data['events_url'] = entity.eventsUrl;
	data['received_events_url'] = entity.receivedEventsUrl;
	data['type'] = entity.type;
	data['site_admin'] = entity.siteAdmin;
	return data;
}

issueLabelsFromJson(IssueLabels data, Map<String, dynamic> json) {
	if (json['id'] != null) {
		data.id = json['id'] is String
				? double.tryParse(json['id'])
				: json['id'].toDouble();
	}
	if (json['node_id'] != null) {
		data.nodeId = json['node_id'].toString();
	}
	if (json['url'] != null) {
		data.url = json['url'].toString();
	}
	if (json['name'] != null) {
		data.name = json['name'].toString();
	}
	if (json['color'] != null) {
		data.color = json['color'].toString();
	}
	if (json['default'] != null) {
		data.xDefault = json['default'];
	}
	if (json['description'] != null) {
		data.description = json['description'].toString();
	}
	return data;
}

Map<String, dynamic> issueLabelsToJson(IssueLabels entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['id'] = entity.id;
	data['node_id'] = entity.nodeId;
	data['url'] = entity.url;
	data['name'] = entity.name;
	data['color'] = entity.color;
	data['default'] = entity.xDefault;
	data['description'] = entity.description;
	return data;
}

issueAssigneeFromJson(IssueAssignee data, Map<String, dynamic> json) {
	if (json['login'] != null) {
		data.login = json['login'].toString();
	}
	if (json['id'] != null) {
		data.id = json['id'] is String
				? double.tryParse(json['id'])
				: json['id'].toDouble();
	}
	if (json['node_id'] != null) {
		data.nodeId = json['node_id'].toString();
	}
	if (json['avatar_url'] != null) {
		data.avatarUrl = json['avatar_url'].toString();
	}
	if (json['gravatar_id'] != null) {
		data.gravatarId = json['gravatar_id'].toString();
	}
	if (json['url'] != null) {
		data.url = json['url'].toString();
	}
	if (json['html_url'] != null) {
		data.htmlUrl = json['html_url'].toString();
	}
	if (json['followers_url'] != null) {
		data.followersUrl = json['followers_url'].toString();
	}
	if (json['following_url'] != null) {
		data.followingUrl = json['following_url'].toString();
	}
	if (json['gists_url'] != null) {
		data.gistsUrl = json['gists_url'].toString();
	}
	if (json['starred_url'] != null) {
		data.starredUrl = json['starred_url'].toString();
	}
	if (json['subscriptions_url'] != null) {
		data.subscriptionsUrl = json['subscriptions_url'].toString();
	}
	if (json['organizations_url'] != null) {
		data.organizationsUrl = json['organizations_url'].toString();
	}
	if (json['repos_url'] != null) {
		data.reposUrl = json['repos_url'].toString();
	}
	if (json['events_url'] != null) {
		data.eventsUrl = json['events_url'].toString();
	}
	if (json['received_events_url'] != null) {
		data.receivedEventsUrl = json['received_events_url'].toString();
	}
	if (json['type'] != null) {
		data.type = json['type'].toString();
	}
	if (json['site_admin'] != null) {
		data.siteAdmin = json['site_admin'];
	}
	return data;
}

Map<String, dynamic> issueAssigneeToJson(IssueAssignee entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['login'] = entity.login;
	data['id'] = entity.id;
	data['node_id'] = entity.nodeId;
	data['avatar_url'] = entity.avatarUrl;
	data['gravatar_id'] = entity.gravatarId;
	data['url'] = entity.url;
	data['html_url'] = entity.htmlUrl;
	data['followers_url'] = entity.followersUrl;
	data['following_url'] = entity.followingUrl;
	data['gists_url'] = entity.gistsUrl;
	data['starred_url'] = entity.starredUrl;
	data['subscriptions_url'] = entity.subscriptionsUrl;
	data['organizations_url'] = entity.organizationsUrl;
	data['repos_url'] = entity.reposUrl;
	data['events_url'] = entity.eventsUrl;
	data['received_events_url'] = entity.receivedEventsUrl;
	data['type'] = entity.type;
	data['site_admin'] = entity.siteAdmin;
	return data;
}

issuePullRequestFromJson(IssuePullRequest data, Map<String, dynamic> json) {
	if (json['url'] != null) {
		data.url = json['url'].toString();
	}
	if (json['html_url'] != null) {
		data.htmlUrl = json['html_url'].toString();
	}
	if (json['diff_url'] != null) {
		data.diffUrl = json['diff_url'].toString();
	}
	if (json['patch_url'] != null) {
		data.patchUrl = json['patch_url'].toString();
	}
	return data;
}

Map<String, dynamic> issuePullRequestToJson(IssuePullRequest entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['url'] = entity.url;
	data['html_url'] = entity.htmlUrl;
	data['diff_url'] = entity.diffUrl;
	data['patch_url'] = entity.patchUrl;
	return data;
}