import 'package:flutter/material.dart';
import 'package:roltv/components/drawer.dart';

const headingStyle = TextStyle(fontSize: 40, color: Colors.white);
const paragraphStyle = TextStyle(fontSize: 20, color: Colors.white);

class ContactUsPage extends StatelessWidget {
  const ContactUsPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget headingSection = Container(
      padding: const EdgeInsets.all(32),
      child: Text("Reach Out To Us:", style: headingStyle),
    );

    Widget subheadingSection = Container(
        padding: const EdgeInsets.all(32),
        child: Text("Our Prayer Ministry – Are You Praying?",
            style: paragraphStyle));

    Widget broadcastSection = Container(
      padding: const EdgeInsets.all(32),
      child: Text("Rays Of Light Broadcasting", style: headingStyle),
    );

    Widget addressSection =
        Container(padding: const EdgeInsets.all(32), child: Text('''
506 North Sullivan Road
Suite F188
Spokane Valley, WA 99037
509-919-8300''', style: paragraphStyle));

    return Scaffold(
      appBar: AppBar(
        title: Text("Contact Us"),
      ),
      body: ListView(children: [
        headingSection,
        subheadingSection,
        broadcastSection,
        addressSection
      ]),
      drawer: AppDrawer(),
    );
  }
}
