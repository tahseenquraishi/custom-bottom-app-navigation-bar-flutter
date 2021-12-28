import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomNavbar extends StatefulWidget {
  @override
  _CustomNavbarState createState() => _CustomNavbarState();
}

class _CustomNavbarState extends State<CustomNavbar>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(vertical: 5),
        // height: 80,
        margin: EdgeInsets.only(bottom: 20, left: 15, right: 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(50),
          ),
          color: Colors.black,
        ),
        child: TabBar(
          labelColor: Colors.teal,
          labelStyle: TextStyle(fontSize: 12),
          unselectedLabelColor: Colors.white,
          indicator: UnderlineTabIndicator(borderSide: BorderSide(width: 0.0)),
          tabs: [
            Tab(
              icon: Icon(Icons.home),
              text: 'Home',
            ),
            Tab(
              icon: Icon(Icons.explore),
              text: 'Explore',
            ),
            Tab(
              icon: Icon(Icons.subscriptions),
              text: 'Subscription',
            ),
            Tab(
              icon: Icon(Icons.video_library),
              text: 'Library',
            ),
          ],
          controller: _tabController,
        ),
      ),
    );
  }
}
