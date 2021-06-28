import 'package:flutter/material.dart';
import 'package:flutter_git_repo_demo/common/config.dart';
import 'package:flutter_git_repo_demo/common/theme_data.dart';
import 'package:flutter_git_repo_demo/widgets/home/components/tag_item.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'issue_sort_type_radio_group.dart';
import 'issue_state_switch_list.dart';
import 'my_button.dart';
import 'dart:math';

final issueLabelsProvider = StateProvider((ref) => []);

class ModalList extends StatelessWidget {
  const ModalList(
      {Key? key,
      required this.onUpdate,
      required this.onCancel,
      required this.currentPage})
      : super(key: key);
  final Function onUpdate;
  final Function onCancel;
  final int currentPage;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: mediumPadding),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          currentPage == 0
              ? _buildTags(context)
              : Container(
                  height: 1,
                ),
          IssueStateSwitch(),
          Divider(
            color: Colors.black,
            height: 6,
          ),
          IssueSortTypeRadioGroup(),
          _buildModalButtonWidget(context),
        ],
      ),
    );
  }

  Widget _buildModalButtonWidget(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          MyButton(context: context, title: '更新する', onPress: () => onUpdate()),
          MyButton(context: context, title: 'キャンセル', onPress: () => onCancel())
        ],
      ),
    );
  }

  Widget _buildTags(BuildContext context) {
    List<Widget> tags = [];
    List colors = [Colors.red, Colors.green, Colors.yellow, Colors.blue];
    Random random = new Random();

    List<String> tagList = Config.tagList;

    for (int i = 0; i < tagList.length; i++) {
      tags.add(TagItem(
        color: colors[random.nextInt(3)],
        index: i,
        text: tagList[i],
      ));
    }

    return Wrap(
      spacing: verySmallPadding,
      children: tags,
    );
  }
}
