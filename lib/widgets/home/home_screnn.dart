import 'package:flutter/material.dart';

import 'components/modal_list.dart';

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
            ),
            body: SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  children: [
                    Expanded(
                      child: TabBarView(
                        children: [
                          ListView.builder(
                            itemBuilder: (context, index) {
                              return Container(
                                margin: EdgeInsets.symmetric(vertical: 8.0),
                                child: Card(
                                  shadowColor: Colors.black,
                                  child: Container(
                                    margin: EdgeInsets.all(16.0),
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              bottom: 16.0),
                                          child: Row(
                                            children: [
                                              Text('No.54062',
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .headline6),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 16.0, right: 8.0),
                                                child: Icon(
                                                    Icons.message_outlined),
                                              ),
                                              Text('2'),
                                            ],
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 4.0, right: 16.0),
                                              child: Icon(
                                                Icons.new_releases,
                                                color: Colors.green,
                                              ),
                                            ),
                                            Text(
                                              'stable',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .headline5!
                                                  .copyWith(
                                                      fontWeight:
                                                          FontWeight.bold),
                                            )
                                          ],
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                              color:
                                                  Colors.blue.withOpacity(0.5),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(8.0))),
                                          width: size.width,
                                          padding: EdgeInsets.all(16.0),
                                          margin: EdgeInsets.symmetric(
                                              vertical: 8.0),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text('##Description'),
                                              SizedBox(
                                                height: 16,
                                              ),
                                              Text(
                                                'this is a test description,this is a test descriptionthis is a test descriptionthis is a test descriptionthis is a test descriptionthis is a test descriptionthis is a test descriptionthis is a test description',
                                                overflow: TextOverflow.ellipsis,
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          height: 8.0,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              '2020 04 06',
                                              textAlign: TextAlign.start,
                                            ),
                                            Container(
                                                decoration: BoxDecoration(
                                                    border: Border.all(
                                                        width: 1.0,
                                                        color: Colors.grey),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0)),
                                                padding: EdgeInsets.only(
                                                    top: 16,
                                                    bottom: 16.0,
                                                    left: 8.0,
                                                    right: 8.0),
                                                child: Text(
                                                  'View full issue',
                                                  style: TextStyle(
                                                      fontSize: 12.0,
                                                      color: Colors.black),
                                                ))
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            },
                            itemCount: 5,
                          ),
                          Icon(Icons.directions_transit),
                          Icon(Icons.directions_bike),
                          Icon(Icons.directions_bike),
                          Icon(Icons.directions_bike),
                          Icon(Icons.directions_bike),
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
