import 'package:flutter_git_repo_demo/api/responsibility/git_repo_respinsibility.dart';
import 'package:flutter_git_repo_demo/states/freezed/all_issues_state.dart';
import 'package:flutter_git_repo_demo/states/freezed/sp_issues_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final spIssuesProvider =
StateNotifierProvider<SpIssuesNotifier, SpIssuesState>((ref) {
  return SpIssuesNotifier();
});

/// manage list state
class SpIssuesNotifier extends StateNotifier<SpIssuesState> {
  SpIssuesNotifier() : super(SpIssuesState()) {
    _initList();
  }

  void _initList(
      {int? initPage,
        String? initSort,
        String? initDirection,
        String? initState,
        String? initLabels,
        String? initSince}) async {
    final page = initPage ?? state.page;
    final sort = initSort ?? state.sort;
    final direction = initDirection ?? state.direction;
    final _state = initState ?? state.state;
    final since = initSince ?? state.since;
    final labels = 'p: shared_preferences';
    final issues = await GitRepoResponsibility().fetchIssue(
        page: page,
        sort: sort,
        direction: direction,
        since: since,
        state: _state,
        labels: labels);

    // ignore: unnecessary_null_comparison
    if (issues == null) {
      state = state.copyWith(page: page, isLoading: false);
      return;
    }
    state = state.copyWith(
        page: page,
        isLoading: false,
        issues: issues,
        sort: sort,
        state: _state,
        since: since,
        labels: labels,
        direction: direction);
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
        state: state.state,
        direction: state.direction,
        labels: state.labels,
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

  Future<void> refresh(
      {String? sort, String? direction, String? since, String? state,String? labels}) async {
    _initList(
        initPage: 1,
        initSort: sort,
        initSince: since,
        initState: state,
        initLabels: labels,
        initDirection: direction);
  }
}
