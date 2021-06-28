import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'modal_list.dart';

class TagItem extends StatefulWidget {
  const TagItem(
      {Key? key, required this.text, required this.index, required this.color})
      : super(key: key);
  final String text;
  final int index;
  final Color color;

  @override
  _TagItemState createState() => _TagItemState();
}

class _TagItemState extends State<TagItem> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          if (context.read(issueLabelsProvider).state.contains(widget.text)) {
            context.read(issueLabelsProvider).state.remove(widget.text);
          } else {
            context.read(issueLabelsProvider).state.add(widget.text);
          }
          setState(() {});
        },
        child: Chip(
          label: Stack(
            children: [
              Text(widget.text),
              context.read(issueLabelsProvider).state.contains(widget.text)
                  ? Icon(Icons.check)
                  : Container(
                      width: 0,
                      height: 0,
                    )
            ],
          ),
          backgroundColor: widget.color,
        ));
  }
}
