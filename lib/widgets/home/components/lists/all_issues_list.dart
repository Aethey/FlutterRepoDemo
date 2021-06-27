import 'package:flutter/material.dart';
import 'package:flutter_git_repo_demo/states/provider/all_issues_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../issue_item_widget.dart';
import '../my_loading_widget.dart';
import '../my_none_widget.dart';

class AllIssuesList extends StatelessWidget {
  const AllIssuesList({Key? key, required this.pageStorageKey}) : super(key: key);
  final String pageStorageKey;

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (BuildContext context,
          T Function<T>(ProviderBase<Object?, T>) watch, Widget? child) {
        final isLoadMoreError = watch(allIssuesProvider).isLoadMoreError;
        final isLoadMoreDone = watch(allIssuesProvider).isLoadMoreDone;
        final isLoading = watch(allIssuesProvider).isLoading;
        final issues = watch(allIssuesProvider).issues;

        if (issues == null) {
          if (isLoading == false) {
            //  NONE
            return MyLoadingWidget();
          }
          // Loading Large
          return MyNoneWidget();
        }

        return ListView.builder(
          key: PageStorageKey(pageStorageKey),
          itemBuilder: (context, index) {
            return IssueItemWidget(
              issueEntity: issues[index],
            );
          },
          itemCount: issues.length,
        );
      },
    );
  }
}
