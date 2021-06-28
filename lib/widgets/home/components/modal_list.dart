import 'package:flutter/material.dart';

import 'issue_sort_type_radio_group.dart';
import 'issue_state_switch_list.dart';
import 'my_button.dart';

class ModalList extends StatelessWidget {
  const ModalList({Key? key, required this.onUpdate, required this.onCancel, required this.currentPage}) : super(key: key);
  final Function onUpdate;
  final Function onCancel;
  final int currentPage;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
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
          MyButton(
              context: context,
              title: '更新する',
              onPress: () => onUpdate()),
          MyButton(
              context: context,
              title: 'キャンセル',
              onPress: () => onCancel())
        ],
      ),
    );
  }
}
