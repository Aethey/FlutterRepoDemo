import 'package:flutter_git_repo_demo/api/dio/dio_manager.dart';
import 'package:flutter_git_repo_demo/generated/json/base/json_convert_content.dart';
import 'package:flutter_git_repo_demo/model/issue_entity.dart';

/// manage unsplash API
class GitRepoResponsibility {
  static final GitRepoResponsibility _instance =
      GitRepoResponsibility._internal();

  factory GitRepoResponsibility() => _instance;

  GitRepoResponsibility._internal();

  Future<List<IssueEntity>> fetchIssue(
      {required int page,
      required String sort,
      required String direction,
      required String since}) async {
    Map<String, dynamic> params = Map();
    params['page'] = page;
    params['per_page'] = 30;
    params['sort'] = sort;
    params['direction'] = direction;
    if (since != '') {
      params['since'] = since;
    }

    var response = await DioManager().get('/issues', params: params);
    List<IssueEntity> list = JsonConvert.fromJsonAsT(response);
    return list;
  }
}
