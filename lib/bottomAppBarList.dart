import 'package:bottom_app_bar_tutorial/customBottomAppBar.dart';
import 'package:bottom_app_bar_tutorial/navBarWithFloat.dart';
import 'package:bottom_app_bar_tutorial/navscreen.dart';
import 'package:flutter/material.dart';

class BottomAppBarList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bottom app bar List'),
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: Wrap(
          runSpacing: 20.0,
          spacing: 20.0,
          children: [
            ElevatedButton(
                onPressed: () => {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => NavScreen(),
                        ),
                      ),
                    },
                child: Text('normal bottomNavBar')),
            ElevatedButton(
                onPressed: () => {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => NavScreenWithFloatButton(),
                        ),
                      ),
                    },
                child: Text('BottomNavBar with FloatingBtn')),
            ElevatedButton(
                onPressed: () => {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CustomNavbar(),
                        ),
                      ),
                    },
                child: Text('Custom BottomNavAppBar')),
          ],
        ),
      ),
    );
  }
}
