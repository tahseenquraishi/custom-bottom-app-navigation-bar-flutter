import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class NavScreenWithFloatButton extends StatefulWidget {
  @override
  _NavScreenWithFloatButtonState createState() =>
      _NavScreenWithFloatButtonState();
}

class _NavScreenWithFloatButtonState extends State<NavScreenWithFloatButton> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: Icon(Icons.add),
        elevation: 2.0,
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 15.0,
        //bottom navigation bar on scaffold
        // color: Colors.blueGrey,
        shape: CircularNotchedRectangle(), //shape of notch
        notchMargin:
            5, //notche margin between floating button and bottom appbar
        child: Row(
          //children inside bottom appbar
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
              icon: Icon(
                Icons.menu,
                color: Colors.black,
              ),
              onPressed: () {},
            ),
            Padding(
              padding: const EdgeInsets.only(right: 30.0),
              child: IconButton(
                icon: Icon(
                  Icons.search,
                  color: Colors.black,
                ),
                onPressed: () {},
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: IconButton(
                icon: Icon(
                  Icons.print,
                  color: Colors.black,
                ),
                onPressed: () {},
              ),
            ),
            IconButton(
              icon: Icon(
                Icons.people,
                color: Colors.black,
              ),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
