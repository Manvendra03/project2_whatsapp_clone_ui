import 'package:flutter/material.dart';
import 'package:project_2_whatsapp_clone/Kconstants.dart';
import 'package:project_2_whatsapp_clone/Screens/TabBarViewScreens/call_Screen.dart';
import 'package:project_2_whatsapp_clone/Screens/TabBarViewScreens/camera_screen.dart';
import 'package:project_2_whatsapp_clone/Screens/TabBarViewScreens/chats_screen.dart';
import 'package:project_2_whatsapp_clone/Screens/TabBarViewScreens/status_screen.dart';
import 'package:project_2_whatsapp_clone/Widgets/calls_fab_button.dart';

import '../Widgets/FABButtons/chat_fab_button.dart';
import '../Widgets/FABButtons/status_fab_button.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    tabController = new TabController(length: 4, vsync: this, initialIndex: 1);
    tabController.addListener(handleTabChanged);
    super.initState();
  }

  void handleTabChanged() {
    setState(() {});
  }

  List<PopupMenuItem> items = [
    PopupMenuItem(
      child: Text("New Group "),
    ),
    PopupMenuItem(
      child: Text("New BroadCast"),
    ),
    PopupMenuItem(
      child: Text("Linked devices"),
    ),
    PopupMenuItem(
      child: Text("Starred messages"),
    ),
    PopupMenuItem(
      child: Text("Paymets"),
    ),
    PopupMenuItem(
      child: Text("Settings"),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "WhatsApp",
            style: Theme.of(context).textTheme.headline1,
          ),
          actions: [
            Icon(Icons.search),
            SizedBox(width: 20),
            PopupMenuButton(
                itemBuilder: (context) => List.generate(items.length, (index) {
                      return items[index];
                    }))
          ],
          bottom: TabBar(
            isScrollable: true,
            labelPadding:
                EdgeInsets.only(top: 20, right: 10, left: 5, bottom: 10),
            controller: tabController,
            tabs: KtabBarList,
          ),
        ),
        body: TabBarView(
          controller: tabController,
          children: [
            Camera_Screen(),
            ChatsScreen(),
            StatusScreen(),
            CallScreen(),
          ],
        ),
        floatingActionButton: getFABButton(),
      ),
    );
  }

  Widget getFABButton() {
    int index = tabController.index;
    if (index == 1) {
      print("1");
      return ChatFABButton();
    } else if (index == 2) {
      print("2");
      return StatusFABButton();
    } else if (index == 3) {
      return CallFABButton();
    }

    return Container();
  }
}
