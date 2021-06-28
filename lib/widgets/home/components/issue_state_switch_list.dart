import 'package:flutter/material.dart';
import 'package:flutter_git_repo_demo/model/issue_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final issueStateProvider = StateProvider((ref) => IssueState.all);
final issueSinceProvider = StateProvider((ref) => IssueState.allTime);

class IssueStateSwitch extends StatelessWidget {
  const IssueStateSwitch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, watch, _) {
        return Column(
          children: [
            Consumer(
              builder: (context, watch, _) {
                return CheckboxListTile(
                  controlAffinity: ListTileControlAffinity.leading,
                  title: const Text('1年以上更新のないIssueを除外する'),
                  onChanged: (bool? value) {
                    if (value!) {
                      context.read(issueSinceProvider).state =
                          IssueState.sinceLastYear;
                    } else {
                      context.read(issueSinceProvider).state =
                          IssueState.allTime;
                    }
                  },
                  value: watch(issueSinceProvider).state ==
                      IssueState.sinceLastYear,
                );
              },
            ),
            Consumer(
              builder: (context, watch, _) {
                return CheckboxListTile(
                  controlAffinity: ListTileControlAffinity.leading,
                  title: const Text('closed状態のIssueを除外する'),
                  onChanged: (bool? value) {
                    if (value!) {
                      context.read(issueStateProvider).state = IssueState.open;
                    } else {
                      context.read(issueStateProvider).state = IssueState.all;
                    }
                  },
                  value: watch(issueStateProvider).state == IssueState.open,
                );
              },
            ),
          ],
        );
      },
    );
  }
}
