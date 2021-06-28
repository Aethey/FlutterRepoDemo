import 'package:flutter/material.dart';
import 'package:flutter_git_repo_demo/states/provider/sp_issues_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../issue_item_widget.dart';
import '../my_loading_widget.dart';
import '../my_none_widget.dart';

class SpIssuesList extends StatefulWidget {
  const SpIssuesList({Key? key, required this.pageStorageKey})
      : super(key: key);
  final String pageStorageKey;

  @override
  State<StatefulWidget> createState() => _SpIssuesListState();
}

class _SpIssuesListState extends State<SpIssuesList> {
  static late ScrollController _scrollController;
  bool isScrollingDown = false;
  int oldLength = 0;
  int curLastIndex = 0;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController()..addListener(_scrollListener);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (BuildContext context,
          T Function<T>(ProviderBase<Object?, T>) watch, Widget? child) {
        final isLoadMoreError = watch(spIssuesProvider).isLoadMoreError;
        final isLoadMoreDone = watch(spIssuesProvider).isLoadMoreDone;
        final isLoading = watch(spIssuesProvider).isLoading;
        final issues = watch(spIssuesProvider).issues;

        if (issues == null) {
          if (isLoading == false) {
            return MyLoadingWidget();
          }
          return MyNoneWidget();
        }

        return RefreshIndicator(
          child: ListView.builder(
            controller: _scrollController,
            key: PageStorageKey(widget.pageStorageKey),
            itemBuilder: (context, index) {
              if (index == issues.length) {
                if (isLoadMoreError) {
                  //  ERROR
                  return MyNoneWidget();
                }

                if (isLoadMoreDone) {
                  return Center(
                    child: Text(''),
                  );
                }

                if (issues.length < 10) {
                  return Container();
                }
                return Center(
                  // width: MediaQuery.of(context).size.width,
                  // padding: EdgeInsets.symmetric(horizontal: mediumPadding),
                  child: CircularProgressIndicator(
                    backgroundColor: Theme.of(context).shadowColor,
                    valueColor: AlwaysStoppedAnimation<Color>(
                        Theme.of(context).primaryColor),
                  ),
                );
              }

              return IssueItemWidget(
                issueEntity: issues[index],
              );
            },
            itemCount: issues.length + 1,
          ),
          onRefresh: () => context.read(spIssuesProvider.notifier).refresh(),
        );
      },
    );
  }

  void _scrollListener() {
    double maxScroll = _scrollController.position.maxScrollExtent;
    double currentScroll = _scrollController.position.pixels;

    WidgetsBinding.instance!.addPostFrameCallback((timeStamp) {
      _scrollController.addListener(() {
        // scrolling
      });
      _scrollController.position.isScrollingNotifier.addListener(() {
        // stop
        if (currentScroll > maxScroll &&
            !context.read(spIssuesProvider).isLoading &&
            _scrollController.position.extentAfter == 0) {
          WidgetsBinding.instance!.addPostFrameCallback((timeStamp) {
            _scrollController.addListener(() {
              // scrolling
            });
            _scrollController.position.isScrollingNotifier.addListener(() {
              // stop
              if (!_scrollController.position.isScrollingNotifier.value) {
                /// if listview scroll stop and scroll distance > maxScroll
                // stop
                if (currentScroll > maxScroll &&
                    !context.read(spIssuesProvider).isLoading &&
                    _scrollController.position.extentAfter == 0) {
                  context.read(spIssuesProvider.notifier).loadMore();
                }
              } else {
                // start
              }
            });
          });
        }
      });
    });
  }
}
