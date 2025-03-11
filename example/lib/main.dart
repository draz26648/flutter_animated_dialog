import 'package:flutter/material.dart';
import 'package:flutter_animated_dialog/flutter_animated_dialog.dart';

import 'model/list_data_model.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool showPerformance = false;

  void onSettingCallback() {
    setState(() {
      showPerformance = !showPerformance;
    });
  }

  @override
  Widget build(BuildContext context) {
    const appTitle = 'Animated Dialog Example';
    return MaterialApp(
      title: appTitle,
      showPerformanceOverlay: showPerformance,
      home: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return MyHomePage(
            title: appTitle,
            onSetting: onSettingCallback,
          );
        },
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;
  final VoidCallback onSetting;

  const MyHomePage({
    Key? key,
    required this.title,
    required this.onSetting,
  }) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String? selectedIndexText;
  int? selectIdx;
  String? singleSelectedIndexText;
  int? selectIndex;
  String? multiSelectedIndexesText;
  List<int>? selectedIndexes = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: widget.onSetting,
          )
        ],
      ),
      body: Center(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(bottom: 10.0),
              padding: const EdgeInsets.only(left: 15.0),
              height: 35.0,
              alignment: Alignment.centerLeft,
              child: const Text('General dialog'),
              color: const Color(0xFFDDDDDD),
            ),
            ListTile(
              title: const Text('Default'),
              onTap: () {
                showAnimatedDialog(
                  context: context,
                  barrierDismissible: true,
                  builder: (BuildContext context) {
                    return ClassicGeneralDialogWidget(
                      titleText: 'Title',
                      contentText: 'content',
                      onPositiveClick: () {
                        Navigator.of(context).pop();
                      },
                      onNegativeClick: () {
                        Navigator.of(context).pop();
                      },
                    );
                  },
                );
              },
            ),
            const Divider(
              height: 0.5,
            ),
            ListTile(
              title: const Text(
                "Fade",
              ),
              onTap: () {
                showAnimatedDialog(
                  context: context,
                  barrierDismissible: true,
                  builder: (BuildContext context) {
                    return ClassicGeneralDialogWidget(
                      titleText: 'Title',
                      contentText: 'content',
                      onPositiveClick: () {
                        Navigator.of(context).pop();
                      },
                      onNegativeClick: () {
                        Navigator.of(context).pop();
                      },
                    );
                  },
                  animationType: DialogTransitionType.fade,
                  curve: Curves.fastOutSlowIn,
                  duration: const Duration(seconds: 1),
                );
              },
            ),
            const Divider(
              height: 0.5,
            ),
            ListTile(
              title: const Text(
                "Slide from top",
              ),
              onTap: () {
                showAnimatedDialog(
                  context: context,
                  barrierDismissible: true,
                  builder: (BuildContext context) {
                    return ClassicGeneralDialogWidget(
                      titleText: 'Title',
                      contentText: 'content',
                      onPositiveClick: () {
                        Navigator.of(context).pop();
                      },
                      onNegativeClick: () {
                        Navigator.of(context).pop();
                      },
                    );
                  },
                  animationType: DialogTransitionType.slideFromTop,
                  curve: Curves.fastOutSlowIn,
                  duration: const Duration(seconds: 1),
                );
              },
            ),
            const Divider(
              height: 0.5,
            ),
            ListTile(
              title: const Text(
                "Slide from top and fade",
              ),
              onTap: () {
                showAnimatedDialog(
                  context: context,
                  barrierDismissible: true,
                  builder: (BuildContext context) {
                    return ClassicGeneralDialogWidget(
                      titleText: 'Title',
                      contentText: 'content',
                      onPositiveClick: () {
                        Navigator.of(context).pop();
                      },
                      onNegativeClick: () {
                        Navigator.of(context).pop();
                      },
                    );
                  },
                  animationType: DialogTransitionType.slideFromTopFade,
                  curve: Curves.fastOutSlowIn,
                  duration: const Duration(seconds: 1),
                );
              },
            ),
            const Divider(
              height: 0.5,
            ),
            ListTile(
              title: const Text(
                "Slide from bottom",
              ),
              onTap: () {
                showAnimatedDialog(
                  context: context,
                  barrierDismissible: true,
                  builder: (BuildContext context) {
                    return ClassicGeneralDialogWidget(
                      titleText: 'Title',
                      contentText: 'content',
                      onPositiveClick: () {
                        Navigator.of(context).pop();
                      },
                      onNegativeClick: () {
                        Navigator.of(context).pop();
                      },
                    );
                  },
                  animationType: DialogTransitionType.slideFromBottom,
                  curve: Curves.fastOutSlowIn,
                  duration: const Duration(seconds: 1),
                );
              },
            ),
            const Divider(
              height: 0.5,
            ),
            ListTile(
              title: const Text(
                "Slide from bottom and fade",
              ),
              onTap: () {
                showAnimatedDialog(
                  context: context,
                  barrierDismissible: true,
                  builder: (BuildContext context) {
                    return ClassicGeneralDialogWidget(
                      titleText: 'Title',
                      contentText: 'content',
                      onPositiveClick: () {
                        Navigator.of(context).pop();
                      },
                      onNegativeClick: () {
                        Navigator.of(context).pop();
                      },
                    );
                  },
                  animationType: DialogTransitionType.slideFromBottomFade,
                  curve: Curves.fastOutSlowIn,
                  duration: const Duration(seconds: 1),
                );
              },
            ),
            const Divider(
              height: 0.5,
            ),
            ListTile(
              title: const Text(
                "Slide from left",
              ),
              onTap: () {
                showAnimatedDialog(
                  context: context,
                  barrierDismissible: true,
                  builder: (BuildContext context) {
                    return ClassicGeneralDialogWidget(
                      titleText: 'Title',
                      contentText: 'content',
                      onPositiveClick: () {
                        Navigator.of(context).pop();
                      },
                      onNegativeClick: () {
                        Navigator.of(context).pop();
                      },
                    );
                  },
                  animationType: DialogTransitionType.slideFromLeft,
                  curve: Curves.fastOutSlowIn,
                  duration: const Duration(seconds: 1),
                );
              },
            ),
            const Divider(
              height: 0.5,
            ),
            ListTile(
              title: const Text(
                "Slide from left and fade",
              ),
              onTap: () {
                showAnimatedDialog(
                  context: context,
                  barrierDismissible: true,
                  builder: (BuildContext context) {
                    return ClassicGeneralDialogWidget(
                      titleText: 'Title',
                      contentText: 'content',
                      onPositiveClick: () {
                        Navigator.of(context).pop();
                      },
                      onNegativeClick: () {
                        Navigator.of(context).pop();
                      },
                    );
                  },
                  animationType: DialogTransitionType.slideFromLeftFade,
                  curve: Curves.fastOutSlowIn,
                  duration: const Duration(seconds: 1),
                );
              },
            ),
            const Divider(
              height: 0.5,
            ),
            ListTile(
              title: const Text(
                "Slide from right",
              ),
              onTap: () {
                showAnimatedDialog(
                  context: context,
                  barrierDismissible: true,
                  builder: (BuildContext context) {
                    return ClassicGeneralDialogWidget(
                      titleText: 'Title',
                      contentText: 'content',
                      onPositiveClick: () {
                        Navigator.of(context).pop();
                      },
                      onNegativeClick: () {
                        Navigator.of(context).pop();
                      },
                    );
                  },
                  animationType: DialogTransitionType.slideFromRight,
                  curve: Curves.fastOutSlowIn,
                  duration: const Duration(seconds: 1),
                );
              },
            ),
            const Divider(
              height: 0.5,
            ),
            ListTile(
              title: const Text(
                "Slide from right and fade",
              ),
              onTap: () {
                showAnimatedDialog(
                  context: context,
                  barrierDismissible: true,
                  builder: (BuildContext context) {
                    return ClassicGeneralDialogWidget(
                      titleText: 'Title',
                      contentText: 'content',
                      onPositiveClick: () {
                        Navigator.of(context).pop();
                      },
                      onNegativeClick: () {
                        Navigator.of(context).pop();
                      },
                    );
                  },
                  animationType: DialogTransitionType.slideFromRightFade,
                  curve: Curves.fastOutSlowIn,
                  duration: const Duration(seconds: 1),
                );
              },
            ),
            const Divider(
              height: 0.5,
            ),
            ListTile(
              title: const Text(
                "Scale",
              ),
              onTap: () {
                showAnimatedDialog(
                  context: context,
                  barrierDismissible: true,
                  builder: (BuildContext context) {
                    return ClassicGeneralDialogWidget(
                      titleText: 'Title',
                      contentText: 'content',
                      onPositiveClick: () {
                        Navigator.of(context).pop();
                      },
                      onNegativeClick: () {
                        Navigator.of(context).pop();
                      },
                    );
                  },
                  animationType: DialogTransitionType.scale,
                  curve: Curves.fastOutSlowIn,
                  duration: const Duration(seconds: 1),
                );
              },
            ),
            const Divider(
              height: 0.5,
            ),
            ListTile(
              title: const Text(
                "Fade scale",
              ),
              onTap: () {
                showAnimatedDialog(
                  context: context,
                  barrierDismissible: true,
                  builder: (BuildContext context) {
                    return ClassicGeneralDialogWidget(
                      titleText: 'Title',
                      contentText: 'content',
                      onPositiveClick: () {
                        Navigator.of(context).pop();
                      },
                      onNegativeClick: () {
                        Navigator.of(context).pop();
                      },
                    );
                  },
                  animationType: DialogTransitionType.fadeScale,
                  curve: Curves.fastOutSlowIn,
                  duration: const Duration(seconds: 1),
                );
              },
            ),
            const Divider(
              height: 0.5,
            ),
            ListTile(
              title: const Text(
                "Scale rotate",
              ),
              onTap: () {
                showAnimatedDialog(
                  context: context,
                  barrierDismissible: true,
                  builder: (BuildContext context) {
                    return ClassicGeneralDialogWidget(
                      titleText: 'Title',
                      contentText: 'content',
                      onPositiveClick: () {
                        Navigator.of(context).pop();
                      },
                      onNegativeClick: () {
                        Navigator.of(context).pop();
                      },
                    );
                  },
                  animationType: DialogTransitionType.scaleRotate,
                  curve: Curves.fastOutSlowIn,
                  duration: const Duration(seconds: 1),
                );
              },
            ),
            const Divider(
              height: 0.5,
            ),
            ListTile(
              title: const Text(
                "Rotate",
              ),
              onTap: () {
                showAnimatedDialog(
                  context: context,
                  barrierDismissible: true,
                  builder: (BuildContext context) {
                    return ClassicGeneralDialogWidget(
                      titleText: 'Title',
                      contentText: 'content',
                      onPositiveClick: () {
                        Navigator.of(context).pop();
                      },
                      onNegativeClick: () {
                        Navigator.of(context).pop();
                      },
                    );
                  },
                  animationType: DialogTransitionType.rotate,
                  curve: Curves.fastOutSlowIn,
                  duration: const Duration(seconds: 1),
                );
              },
            ),
            const Divider(
              height: 0.5,
            ),
            ListTile(
              title: const Text(
                "Fade rotate",
              ),
              onTap: () {
                showAnimatedDialog(
                  context: context,
                  barrierDismissible: true,
                  builder: (BuildContext context) {
                    return ClassicGeneralDialogWidget(
                      titleText: 'Title',
                      contentText: 'content',
                      onPositiveClick: () {
                        Navigator.of(context).pop();
                      },
                      onNegativeClick: () {
                        Navigator.of(context).pop();
                      },
                    );
                  },
                  animationType: DialogTransitionType.fadeRotate,
                  curve: Curves.fastOutSlowIn,
                  duration: const Duration(seconds: 1),
                );
              },
            ),
            const Divider(
              height: 0.5,
            ),
            ListTile(
              title: const Text(
                "Rotate 3D",
              ),
              onTap: () {
                showAnimatedDialog(
                  context: context,
                  barrierDismissible: true,
                  builder: (BuildContext context) {
                    return ClassicGeneralDialogWidget(
                      titleText: 'Title',
                      contentText: 'content',
                      onPositiveClick: () {
                        Navigator.of(context).pop();
                      },
                      onNegativeClick: () {
                        Navigator.of(context).pop();
                      },
                    );
                  },
                  animationType: DialogTransitionType.rotate3D,
                  curve: Curves.fastOutSlowIn,
                  duration: const Duration(seconds: 1),
                );
              },
            ),
            const Divider(
              height: 0.5,
            ),
            ListTile(
              title: const Text(
                "Size",
              ),
              onTap: () {
                showAnimatedDialog(
                  context: context,
                  barrierDismissible: true,
                  builder: (BuildContext context) {
                    return ClassicGeneralDialogWidget(
                      titleText: 'Title',
                      contentText: 'content',
                      onPositiveClick: () {
                        Navigator.of(context).pop();
                      },
                      onNegativeClick: () {
                        Navigator.of(context).pop();
                      },
                    );
                  },
                  animationType: DialogTransitionType.size,
                  curve: Curves.fastOutSlowIn,
                  duration: const Duration(seconds: 1),
                );
              },
            ),
            const Divider(
              height: 0.5,
            ),
            ListTile(
              title: const Text(
                "Size fade",
              ),
              onTap: () {
                showAnimatedDialog(
                  context: context,
                  barrierDismissible: true,
                  builder: (BuildContext context) {
                    return ClassicGeneralDialogWidget(
                      titleText: 'Title',
                      contentText: 'content',
                      onPositiveClick: () {
                        Navigator.of(context).pop();
                      },
                      onNegativeClick: () {
                        Navigator.of(context).pop();
                      },
                    );
                  },
                  animationType: DialogTransitionType.sizeFade,
                  curve: Curves.fastOutSlowIn,
                  duration: const Duration(seconds: 1),
                );
              },
            ),
            const Divider(
              height: 0.5,
            ),
            ListTile(
              title: const Text(
                "No animation",
              ),
              onTap: () {
                showAnimatedDialog(
                  context: context,
                  barrierDismissible: true,
                  builder: (BuildContext context) {
                    return ClassicGeneralDialogWidget(
                      titleText: 'Title',
                      contentText: 'content',
                      onPositiveClick: () {
                        Navigator.of(context).pop();
                      },
                      onNegativeClick: () {
                        Navigator.of(context).pop();
                      },
                    );
                  },
                  animationType: DialogTransitionType.none,
                  curve: Curves.fastOutSlowIn,
                  duration: const Duration(seconds: 1),
                );
              },
            ),
            const Divider(
              height: 0.5,
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 10.0, top: 50.0),
              padding: const EdgeInsets.only(left: 15.0),
              height: 35.0,
              alignment: Alignment.centerLeft,
              child: const Text('Classic dialog widget'),
              color: const Color(0xFFDDDDDD),
            ),
            ListTile(
              title: const Text(
                "General dialog",
              ),
              onTap: () {
                showAnimatedDialog(
                  context: context,
                  barrierDismissible: true,
                  builder: (BuildContext context) {
                    return ClassicGeneralDialogWidget(
                      titleText: 'Title',
                      contentText: 'This is general dialog.',
                      onPositiveClick: () {
                        Navigator.of(context).pop();
                      },
                      onNegativeClick: () {
                        Navigator.of(context).pop();
                      },
                    );
                  },
                  animationType: DialogTransitionType.size,
                  curve: Curves.linear,
                );
              },
            ),
            const Divider(
              height: 0.5,
            ),
            ListTile(
              title: Text(
                "List dialog ${selectedIndexText?.isNotEmpty == true ? '(index:$selectedIndexText)' : ''}",
              ),
              onTap: () async {
                final index = await showAnimatedDialog<int>(
                  context: context,
                  barrierDismissible: true,
                  builder: (BuildContext context) {
                    return ClassicListDialogWidget<ListDataModel>(
                      titleText: 'Title',
                      dataList: List.generate(10, (index) {
                        return ListDataModel(
                          name: "item $index",
                          value: "value $index",
                        );
                      }),
                      onListItemClick: () {
                        Navigator.of(context).pop(selectIdx);
                      },
                      onPositiveClick: () {
                        Navigator.of(context).pop();
                      },
                      onNegativeClick: () {
                        Navigator.of(context).pop();
                      },
                    );
                  },
                  animationType: DialogTransitionType.size,
                  curve: Curves.fastOutSlowIn,
                  duration: const Duration(seconds: 1),
                );
                setState(() {
                  selectIdx = index;
                  selectedIndexText = index?.toString();
                });
              },
            ),
            const Divider(
              height: 0.5,
            ),
            ListTile(
              title: Text(
                "List single select${singleSelectedIndexText?.isNotEmpty == true ? '(index:$singleSelectedIndexText)' : ''}",
              ),
              onTap: () async {
                final index = await showAnimatedDialog<int>(
                  context: context,
                  barrierDismissible: true,
                  builder: (BuildContext context) {
                    return ClassicListDialogWidget<ListDataModel>(
                      titleText: 'Title',
                      listType: ListType.singleSelect,
                      selectedIndex: selectIndex ?? -1,
                      dataList: List.generate(10, (index) {
                        return ListDataModel(
                          name: "item $index",
                          value: "value $index",
                        );
                      }),
                      onListItemClick: () {
                        Navigator.of(context).pop(selectIndex);
                      },
                      onPositiveClick: () {
                        Navigator.of(context).pop();
                      },
                      onNegativeClick: () {
                        Navigator.of(context).pop();
                      },
                    );
                  },
                  animationType: DialogTransitionType.size,
                  curve: Curves.fastOutSlowIn,
                  duration: const Duration(seconds: 1),
                );
                setState(() {
                  selectIndex = index;
                  singleSelectedIndexText = index?.toString();
                });
              },
            ),
            const Divider(
              height: 0.5,
            ),
            ListTile(
              title: Text(
                "List multiple select${multiSelectedIndexesText?.isNotEmpty == true ? '(index:$multiSelectedIndexesText)' : ''}",
              ),
              onTap: () async {
                final indexes = await showAnimatedDialog<List<int>>(
                  context: context,
                  barrierDismissible: true,
                  builder: (BuildContext context) {
                    return ClassicListDialogWidget<ListDataModel>(
                      titleText: 'Title',
                      listType: ListType.multiSelect,
                      selectedIndexes: selectedIndexes ?? [],
                      dataList: List.generate(10, (index) {
                        return ListDataModel(
                          name: "item $index",
                          value: "value $index",
                        );
                      }),
                      onListItemClick: () {
                        Navigator.of(context).pop(selectedIndexes);
                      },
                      onPositiveClick: () {
                        Navigator.of(context).pop();
                      },
                      onNegativeClick: () {
                        Navigator.of(context).pop();
                      },
                    );
                  },
                  animationType: DialogTransitionType.size,
                  curve: Curves.fastOutSlowIn,
                  duration: const Duration(seconds: 1),
                );
                setState(() {
                  selectedIndexes = indexes;
                  multiSelectedIndexesText = indexes?.map((e) => e.toString()).join(",");
                });
              },
            ),
            const Divider(
              height: 0.5,
            ),
            ListTile(
              title: const Text(
                "Custom dialog",
              ),
              onTap: () {
                showAnimatedDialog(
                  context: context,
                  barrierDismissible: true,
                  builder: (BuildContext context) {
                    return SingleChildScrollView(
                        child: ListBody(
                      children: <Widget>[
                        Container(
                          padding: const EdgeInsets.all(10.0),
                          width: 200.0,
                          child: const FlutterLogo(
                            size: 150.0,
                          ),
                        )
                      ],
                    ));
                  },
                  animationType: DialogTransitionType.size,
                  curve: Curves.linear,
                );
              },
            ),
            const Divider(
              height: 0.5,
            ),
          ],
        ),
      ),
    );
  }
}
