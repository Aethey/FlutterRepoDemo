import 'package:flutter/material.dart';
import 'package:flutter_git_repo_demo/common/theme_data.dart';
import 'package:flutter_git_repo_demo/model/issue_entity.dart';

class IssueItemWidget extends StatelessWidget {
  const IssueItemWidget({Key? key, required this.issueEntity})
      : super(key: key);

  final IssueEntity issueEntity;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: smallPadding),
      child: Card(
        shadowColor: Colors.black,
        child: Container(
          margin: EdgeInsets.all(mediumPadding),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: mediumPadding),
                child: Row(
                  children: [
                    Text('${issueEntity.number}',
                        style: Theme.of(context).textTheme.headline6),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: mediumPadding, right: smallPadding),
                      child: Icon(Icons.message_outlined),
                    ),
                    Text('${issueEntity.comments}'),
                  ],
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        left: verySmallPadding, right: mediumPadding),
                    child: Icon(
                      Icons.new_releases,
                      color: Colors.green,
                    ),
                  ),
                  Container(
                    width: size.width - 160,
                    child: Text(
                      '${issueEntity.title}',
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      style: Theme.of(context)
                          .textTheme
                          .headline5!
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.blue.withOpacity(0.5),
                    borderRadius:
                        BorderRadius.all(Radius.circular(smallPadding))),
                width: size.width,
                padding: EdgeInsets.all(mediumPadding),
                margin: EdgeInsets.symmetric(vertical: smallPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '${issueEntity.body}',
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: smallPadding,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${issueEntity.createdAt}',
                    textAlign: TextAlign.start,
                  ),
                  Container(
                      decoration: BoxDecoration(
                          border: Border.all(width: 1.0, color: Colors.grey),
                          borderRadius: BorderRadius.circular(smallPadding)),
                      padding: EdgeInsets.only(
                          top: 16,
                          bottom: mediumPadding,
                          left: smallPadding,
                          right: smallPadding),
                      child: Text(
                        'View full issue',
                        style:
                            TextStyle(fontSize: smallText, color: Colors.black),
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
