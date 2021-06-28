

import 'package:flutter_git_repo_demo/model/issue_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'webview_issues_state.freezed.dart';

@freezed
class WebViewIssuesState with _$WebViewIssuesState{
  const factory WebViewIssuesState({
    @Default(1) int page,
    @Default(30) int per_page,
    @Default('created') String sort,
    @Default('desc') String direction,
    @Default('') String since,
    @Default('all') String state,
    @Default('') String labels,
    @Default(true) bool isLoading,
    @Default(false) bool isLoadMoreError,
    @Default(false) bool isLoadMoreDone,
    List<IssueEntity>? issues,
  }) = _WebViewIssuesState;

  const WebViewIssuesState._();

}