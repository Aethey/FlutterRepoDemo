import 'package:flutter/material.dart';
import 'package:flutter_git_repo_demo/states/provider/all_issues_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'components/issue_item_widget.dart';
import 'components/lists/all_issues_list.dart';
import 'components/modal_list.dart';

final issueStateProvider = StateProvider((ref) => ['all']);

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

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
                    showModal(context);
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
                          Icon(Icons.directions_transit),
                          Icon(Icons.directions_bike),
                          Icon(Icons.directions_bike),
                          Icon(Icons.directions_bike),
                          AllIssuesList(
                            pageStorageKey: 'key2',
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
                showModal(context);
              },
            ),
          );
        },
      ),
    );
  }

  void showModal(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return ModalList(
            onCancel: () {
              Navigator.of(context).pop();
            },
            onUpdate: () {
              Navigator.of(context).pop();
            },
          );
        });
  }
}
