import 'package:flutter/material.dart';
import 'package:flutter_git_repo_demo/model/issue_sort_direction.dart';
import 'package:flutter_git_repo_demo/states/provider/all_issues_provider.dart';
import 'package:flutter_git_repo_demo/states/provider/new_issues_provider.dart';
import 'package:flutter_git_repo_demo/states/provider/share_issues_provider.dart';
import 'package:flutter_git_repo_demo/states/provider/sp_issues_provider.dart';
import 'package:flutter_git_repo_demo/states/provider/waiting_issues_provider.dart';
import 'package:flutter_git_repo_demo/states/provider/webview_issues_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'components/issue_sort_type_radio_group.dart';
import 'components/issue_state_switch_list.dart';

import 'components/lists/all_issues_list.dart';
import 'package:flutter_git_repo_demo/model/issue_state.dart';
import 'components/lists/new_issues_list.dart';
import 'components/lists/share_issues_list.dart';
import 'components/lists/sp_issues_list.dart';
import 'components/lists/waiting_issues_list.dart';
import 'components/lists/webview_issues_list.dart';
import 'components/modal_list.dart';

import 'package:flutter_git_repo_demo/model/issue_sort_type.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return DefaultTabController(
      length: 6,
      child: Builder(
        builder: (BuildContext context) {
          return Scaffold(
            appBar: AppBar(
              elevation: 0,
              centerTitle: false,
              backgroundColor: Colors.white,
              title: TabBar(
                labelColor: Colors.black,
                tabs: [
                  Tab(
                    text: '全て',
                  ),
                  Tab(text: 'p: webview'),
                  Tab(text: 'p: shared_preferences'),
                  Tab(text: 'waiting for customer response'),
                  Tab(text: 'severe: new feature'),
                  Tab(text: 'p: share'),
                ],
                isScrollable: true,
              ),
              actions: [
                IconButton(
                  icon: Icon(
                    Icons.tag,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    // showModal(context);
                  },
                ),
              ],
            ),
            body: SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  children: [
                    Expanded(
                      child: TabBarView(
                        children: [
                          AllIssuesList(
                            pageStorageKey: 'all',
                          ),
                          ShareIssuesList(
                            pageStorageKey: 'share',
                          ),
                          SpIssuesList(
                            pageStorageKey: 'shared_preferences',
                          ),
                          WaitingIssuesList(
                            pageStorageKey: 'waiting for customer response',
                          ),
                          NewIssuesList(
                            pageStorageKey: 'new',
                          ),
                          WebViewIssuesList(
                            pageStorageKey: 'webView',
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            floatingActionButton: FloatingActionButton(
              backgroundColor: Colors.white,
              child: Icon(
                Icons.sort_sharp,
                color: Colors.black,
              ),
              onPressed: () {
                print('page is ${DefaultTabController.of(context)!.index}');
                currentPage = DefaultTabController.of(context)!.index;
                showModal(context, currentPage);
              },
            ),
          );
        },
      ),
    );
  }

  void showModal(BuildContext context, int currentPage) {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return ModalList(
            currentPage: currentPage,
            onCancel: () {
              Navigator.of(context).pop();
            },
            onUpdate: () {
              String since = context.read(issueSinceProvider).state.value;
              String sort = context.read(issueSortProvider).state.param;
              String state = context.read(issueStateProvider).state.value;
              String direction = '';
              if (sort == IssueSortType.updated.param) {
                direction = IssueSortDirection.ascending.value;
              } else {
                direction = IssueSortDirection.descending.value;
              }
              switch (currentPage) {
                case 0:
                  context.read(allIssuesProvider.notifier).refresh(
                      since: since,
                      sort: sort,
                      state: state,
                      direction: direction);
                  break;
                case 1:
                  context.read(shareIssuesProvider.notifier).refresh(
                      since: since,
                      sort: sort,
                      state: state,
                      direction: direction);
                  break;
                case 2:
                  context.read(spIssuesProvider.notifier).refresh(
                      since: since,
                      sort: sort,
                      state: state,
                      direction: direction);
                  break;
                case 3:
                  context.read(waitingIssuesProvider.notifier).refresh(
                      since: since,
                      sort: sort,
                      state: state,
                      direction: direction);
                  break;
                case 4:
                  context.read(newIssuesProvider.notifier).refresh(
                      since: since,
                      sort: sort,
                      state: state,
                      direction: direction);
                  break;
                case 5:
                  context.read(webViewIssuesProvider.notifier).refresh(
                      since: since,
                      sort: sort,
                      state: state,
                      direction: direction);
                  break;
              }

              Navigator.of(context).pop();
            },
          );
        });
  }
}
