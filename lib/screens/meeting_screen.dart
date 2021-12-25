import "package:flutter/material.dart";
import '../universal_variables.dart';
import 'create_meeting_screen.dart';
import 'join_meeting_screen.dart';

class MeetingScreen extends StatefulWidget {
  @override
  _MeetingScreenState createState() => _MeetingScreenState();
}

class _MeetingScreenState extends State<MeetingScreen>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  tabBuilder(String name) {
    return Container(
      width: 150,
      height: 50,
      child: Card(
        child: Center(
          child: Text(
            name,
            style: montserratStyle(
              15,
              Colors.black,
            ),
          ),
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Zoom Clone",
          style: montserratStyle(20, Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.lightBlue,
        bottom: TabBar(
          controller: tabController,
          tabs: [
            tabBuilder("Join Meeting"),
            tabBuilder("Create Meeting"),
          ],
        ),
      ),
      body: TabBarView(
        controller: tabController,
        children: [
          JoinMeetingScreen(),
          CreateMeeetingScreen(),
        ],
      ),
    );
  }
}
