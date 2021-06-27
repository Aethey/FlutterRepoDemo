import 'package:flutter/material.dart';
import 'package:flutter_git_repo_demo/model/issue_sort_type.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final issueSortProvider = StateProvider((ref) => IssueSortType.created);

class IssueSortTypeRadioGroup extends StatelessWidget {
  const IssueSortTypeRadioGroup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, watch, _) {
        return Column(
          children: [
            RadioListTile<IssueSortType>(
              title: const Text('作成日時の新しい順'),
              value: IssueSortType.created,
              groupValue: watch(issueSortProvider).state,
              onChanged: (value) {
                context.read(issueSortProvider).state = IssueSortType.created;
              },
            ),
            RadioListTile<IssueSortType>(
              title: const Text('最終更新日時の古い順'),
              value: IssueSortType.updated,
              groupValue: watch(issueSortProvider).state,
              onChanged: (value) {
                context.read(issueSortProvider).state = IssueSortType.updated;
              },
            ),
            RadioListTile<IssueSortType>(
              title: const Text('コメント数の多い順'),
              value: IssueSortType.comments,
              groupValue: watch(issueSortProvider).state,
              onChanged: (value) {
                context.read(issueSortProvider).state = IssueSortType.comments;
              },
            ),
          ],
        );
      },
    );
  }
}
