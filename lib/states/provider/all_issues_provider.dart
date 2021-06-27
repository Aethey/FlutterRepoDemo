import 'package:flutter_git_repo_demo/api/responsibility/git_repo_respinsibility.dart';
import 'package:flutter_git_repo_demo/states/freezed/all_issues_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final allIssuesProvider =
    StateNotifierProvider<AllIssuesNotifier, AllIssuesState>((ref) {
  return AllIssuesNotifier();
});

/// manage image list state
class AllIssuesNotifier extends StateNotifier<AllIssuesState> {
  AllIssuesNotifier() : super(AllIssuesState()) {
    _initList(query: '');
  }

  void _initList({int? initPage, required String query}) async {
    final page = initPage ?? state.page;
    final issues = await GitRepoResponsibility().fetchIssue(
        page: page,
        sort: state.sort,
        direction: state.direction,
        since: state.since);

    // ignore: unnecessary_null_comparison
    if (issues == null) {
      state = state.copyWith(page: page, isLoading: false);
      return;
    }
    state = state.copyWith(page: page, isLoading: false, issues: issues);
  }

  /// load more data
  void loadMore() async {
    if (state.isLoading) {
      return;
    }
    state = state.copyWith(
        isLoading: true, isLoadMoreDone: false, isLoadMoreError: false);

    final issues = await GitRepoResponsibility().fetchIssue(
        page: state.page + 1,
        sort: state.sort,
        direction: state.direction,
        since: state.since);

    // ignore: unnecessary_null_comparison
    if (issues == null) {
      // error
      state = state.copyWith(isLoadMoreError: true, isLoading: false);
      return;
    }

    if (issues.isNotEmpty) {
      state = state.copyWith(
          page: state.page + 1,
          isLoading: false,
          isLoadMoreDone: issues.isEmpty,
          issues: [...?state.issues, ...issues]);
    } else {
      state = state.copyWith(isLoading: false, isLoadMoreDone: issues.isEmpty);
    }
  }

  Future<void> refresh(String query) async {
    _initList(initPage: 1, query: query);
  }
}
