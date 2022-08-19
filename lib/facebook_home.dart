import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'home_tab.dart';

class FacebookHome extends StatelessWidget {
  const FacebookHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: AppBar(
          systemOverlayStyle: const SystemUiOverlayStyle(statusBarColor: Colors.white),
          backgroundColor: Colors.white,
          elevation: 1,
          title: const Text(
            'facebook',
            style: TextStyle(color: Colors.blue, fontSize: 30, fontWeight: FontWeight.bold),
          ),
          actions: [
            Container(
              height: 35,
              width: 35,
              decoration: BoxDecoration(color: Colors.grey.shade200, shape: BoxShape.circle),
              child: Icon(Icons.search, color: Colors.grey.shade800, size: 27),
            ),
            const SizedBox(width: 10),
            Badge(
              position: BadgePosition.bottomEnd(bottom: 30, end: 10),
              badgeColor: Colors.red.shade600,
              badgeContent: const Text('2',
                  style: TextStyle(color: Colors.white, fontSize: 10, fontWeight: FontWeight.bold)),
              child: Container(
                height: 35,
                width: 35,
                margin: const EdgeInsets.only(right: 10),
                decoration: BoxDecoration(color: Colors.grey.shade200, shape: BoxShape.circle),
                child: Icon(Icons.offline_bolt, color: Colors.grey.shade800, size: 27),
              ),
            ),
          ],
          bottom: TabBar(
            labelPadding: const EdgeInsets.only(bottom: 5),
            indicatorWeight: 4,
            labelColor: Colors.blue,
            unselectedLabelColor: Colors.grey.shade600,
            tabs: [
              const Icon(Icons.home, size: 27),
              const Icon(Icons.people_outline, size: 27), //people
              Badge(
                position: BadgePosition.bottomEnd(bottom: 12, end: -8),
                badgeColor: Colors.red.shade600,
                badgeContent: const Text(
                  '5',
                  style: TextStyle(color: Colors.white, fontSize: 10, fontWeight: FontWeight.bold),
                ),
                child: const Icon(Icons.ondemand_video, size: 27),
              ),
              const Icon(Icons.storefront, size: 27),
              Badge(
                position: BadgePosition.bottomEnd(bottom: 12, end: -4),
                badgeColor: Colors.red.shade600,
                badgeContent: const Text(
                  '9',
                  style: TextStyle(color: Colors.white, fontSize: 10, fontWeight: FontWeight.bold),
                ),
                child: const Icon(Icons.notifications_none, size: 27),
              ),
              const Icon(Icons.menu, size: 27),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Tab(child: HomeTab()),
            Tab(child: Center(child: Text('Hello'))),
            Tab(child: Center(child: Text('Hello'))),
            Tab(child: Center(child: Text('Hello'))),
            Tab(child: Center(child: Text('Hello'))),
            Tab(child: Center(child: Text('Hello'))),
          ],
        ),
      ),
    );
  }
}
