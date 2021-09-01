// ignore: import_of_legacy_library_into_null_safe
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:module_app/components/folder.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          child: Container(
            color: Theme.of(context).primaryColor,
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.symmetric(
                  horizontal: 25,
                ),
                margin: EdgeInsets.only(
                  bottom: 40,
                ),
                child: Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      child: AutoSizeText(
                        'Hello Learner!',
                        style: Theme.of(context).textTheme.headline1,
                        maxLines: 1,
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      child: Text(
                        'Here is your Grade 3 Modules',
                        style: Theme.of(context).textTheme.subtitle1,
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  padding:
                      EdgeInsets.only(left: 25, right: 25, top: 15, bottom: 25),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(90),
                    ),
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                          bottom: 25,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Container(
                                padding: EdgeInsets.only(
                                  left: 10,
                                ),
                                child: Text(
                                  'Navigate through four quarters.',
                                  style: Theme.of(context).textTheme.subtitle2,
                                ),
                              ),
                            ),
                            Container(
                              child: Image.asset(
                                'assets/images/study.png',
                                filterQuality: FilterQuality.high,
                                width: MediaQuery.of(context).size.width * 0.4,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          child: GridView.count(
                            crossAxisCount: 2,
                            children: [
                              Folder(
                                  folderTitle: 'Quarter 1',
                                  folderColor: Color(0xff5128EB),
                                  quarterIndex: 0),
                              Folder(
                                  folderTitle: 'Quarter 2',
                                  folderColor: Color(0xffEC2363),
                                  quarterIndex: 1),
                              Folder(
                                  folderTitle: 'Quarter 3',
                                  folderColor: Color(0xff00BB7A),
                                  quarterIndex: 2),
                              Folder(
                                  folderTitle: 'Quarter 4',
                                  folderColor: Color(0xff4167F7),
                                  quarterIndex: 3),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
