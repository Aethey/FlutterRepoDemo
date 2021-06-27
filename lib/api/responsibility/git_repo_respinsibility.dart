import 'package:flutter_git_repo_demo/api/dio/dio_manager.dart';
import 'package:flutter_git_repo_demo/generated/json/base/json_convert_content.dart';
import 'package:flutter_git_repo_demo/model/issue_entity.dart';

/// manage unsplash API
class GitRepoResponsibility {
  static final GitRepoResponsibility _instance =
      GitRepoResponsibility._internal();

  factory GitRepoResponsibility() => _instance;

  GitRepoResponsibility._internal();

  Future<List<IssueEntity>> fetchIssue() async {
    var response = await DioManager().get('/issues');
    List<IssueEntity> list = JsonConvert.fromJsonAsT(response);
    return list;
  }
}
