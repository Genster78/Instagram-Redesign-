import 'package:flutter/material.dart';

import '../tabs/feed_view.dart';
import '../tabs/reels_view.dart';
import '../tabs/tagged_view.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  //tabs
  final List<Widget> tabs = const [
    // feed tab
    Tab(
      icon: Icon(
        Icons.image,
        color: Colors.grey,
      ),
    ),

    // reels tab
    Tab(
      icon: Icon(
        Icons.video_collection,
        color: Colors.grey,
      ),
    ),

    // tagged tab
    Tab(
      icon: Icon(
        Icons.bookmark,
        color: Colors.grey,
      ),
    ),
  ];

  final List<Widget> tabBarViews = [
    // feed view
    FeedView(),

    // reels view
    ReelsView(),

    // tagged view
    TaggedView(),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            // tab bar
            TabBar(
              tabs: tabs,
            ),

            //tab bar view
            Expanded(
              child: TabBarView(children: tabBarViews),
            ),
          ],
        ),
      ),
    );
  }
}
