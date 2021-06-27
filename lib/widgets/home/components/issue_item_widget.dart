import 'package:flutter/material.dart';
import 'package:flutter_git_repo_demo/model/issue_entity.dart';

class IssueItemWidget extends StatelessWidget {
  const IssueItemWidget({Key? key, required this.issueEntity})
      : super(key: key);

  final IssueEntity issueEntity;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8.0),
      child: Card(
        shadowColor: Colors.black,
        child: Container(
          margin: EdgeInsets.all(16.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: Row(
                  children: [
                    Text('${issueEntity.number}',
                        style: Theme.of(context).textTheme.headline6),
                    Padding(
                      padding: const EdgeInsets.only(left: 16.0, right: 8.0),
                      child: Icon(Icons.message_outlined),
                    ),
                    Text('${issueEntity.comments}'),
                  ],
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 4.0, right: 16.0),
                    child: Icon(
                      Icons.new_releases,
                      color: Colors.green,
                    ),
                  ),
                  Text(
                    '${issueEntity.title}',
                    style: Theme.of(context)
                        .textTheme
                        .headline5!
                        .copyWith(fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.blue.withOpacity(0.5),
                    borderRadius: BorderRadius.all(Radius.circular(8.0))),
                width: size.width,
                padding: EdgeInsets.all(16.0),
                margin: EdgeInsets.symmetric(vertical: 8.0),
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
                height: 8.0,
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
                          borderRadius: BorderRadius.circular(8.0)),
                      padding: EdgeInsets.only(
                          top: 16, bottom: 16.0, left: 8.0, right: 8.0),
                      child: Text(
                        'View full issue',
                        style: TextStyle(fontSize: 12.0, color: Colors.black),
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
