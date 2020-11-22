import 'package:flutter/material.dart';
import 'package:roltv/components/drawer.dart';
import 'package:roltv/main.dart';
import 'package:url_launcher/url_launcher.dart';

const headingStyle = TextStyle(fontSize: 40, color: Colors.white);
const paragraphStyle = TextStyle(fontSize: 20, color: Colors.white);

class SupportUsPage extends StatelessWidget {
  const SupportUsPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget headingSection = Container(
      padding: const EdgeInsets.all(32),
      child: Text("Fundraiser", style: headingStyle),
    );

    Widget subheadingSection = Container(
        padding: const EdgeInsets.all(32),
        child: Text("Support us by making a donation.", style: paragraphStyle));

    Widget buttonWidget = Container(
        child: Center(
      child: ElevatedButton(
        onPressed: () => launch(
            'https://give.idonate.com/hesalive/rays-of-light-television'),
        child: const Text('Donate', style: TextStyle(fontSize: 20)),
      ),
    ));

    return Scaffold(
      appBar: AppBar(
        title: Text("Support Us"),
      ),
      body:
          ListView(children: [headingSection, subheadingSection, buttonWidget]),
      drawer: AppDrawer(),
    );
  }
}
