

import 'package:flutter_git_repo_demo/model/issue_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'sp_issues_state.freezed.dart';

@freezed
class SpIssuesState with _$SpIssuesState{
  const factory SpIssuesState({
    @Default(1) int page,
    @Default(30) int per_page,
    @Default('created') String sort,
    @Default('desc') String direction,
    @Default('') String since,
    @Default(true) bool isLoading,
    @Default(false) bool isLoadMoreError,
    @Default(false) bool isLoadMoreDone,
    List<IssueEntity>? issues,
  }) = _SpIssuesState;

  const SpIssuesState._();

}