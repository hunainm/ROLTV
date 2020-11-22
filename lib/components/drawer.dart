import 'package:flutter/material.dart';
import 'package:roltv/main.dart';
import 'package:roltv/pages/about_us.dart';
import 'package:roltv/pages/board.dart';
import 'package:roltv/pages/contact_us.dart';
import 'package:roltv/pages/home_page.dart';
import 'package:roltv/pages/support_us.dart';

const menuTextStyle = TextStyle(fontSize: 20, color: Colors.white);

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      // Add a ListView to the drawer. This ensures the user can scroll
      // through the options in the drawer if there isn't enough vertical
      // space to fit everything.
      child: Container(
        color: primaryColor,
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/logo.png"),
                      fit: BoxFit.contain)),
              padding: EdgeInsets.all(100),
              child: Text(''),
            ),
            ListTile(
              title: Text('Live Stream', style: menuTextStyle),
              leading: Icon(Icons.tv_rounded, color: Colors.white),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (BuildContext context) => HomePage()));
              },
            ),
            ListTile(
              title: Text('About Us', style: menuTextStyle),
              leading: Icon(Icons.business, color: Colors.white),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (BuildContext context) => AboutUsPage()));
              },
            ),
            ListTile(
              title: Text('Board of Directors', style: menuTextStyle),
              leading: Icon(Icons.group, color: Colors.white),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (BuildContext context) => BoardOfDirectorsPage()));
              },
            ),
            ListTile(
              title: Text('Contact Us', style: menuTextStyle),
              leading: Icon(Icons.support_agent, color: Colors.white),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (BuildContext context) => ContactUsPage()));
              },
            ),
            ListTile(
              title: Text('Support Us', style: menuTextStyle),
              leading: Icon(Icons.support, color: Colors.white),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (BuildContext context) => SupportUsPage()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
