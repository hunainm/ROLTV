import 'package:flutter/material.dart';
import 'package:roltv/components/drawer.dart';
import 'package:webview_flutter/webview_flutter.dart';

const headingStyle = TextStyle(fontSize: 40, color: Colors.white);
const paragraphStyle = TextStyle(fontSize: 20, color: Colors.white);

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title = "Watch Live Stream";

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Widget bibleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Text(
          '"The practical, God-fearing workers will be growing upward, praying in faith for grace and heavenly wisdom that they may do the work devolving upon them with cheerfulness and a willing mind. They will seek the divine rays of light that they may brighten the paths of others." DG 16.1',
          style: paragraphStyle,
          softWrap: true),
    );

    Widget headingSection = Container(
      padding: const EdgeInsets.all(32),
      child: Text("Rays Of Light Television", style: headingStyle),
    );

    Widget subheadingSection = Container(
        padding: const EdgeInsets.all(32),
        child: Text(
            "24/7 Streaming TV. We meet at the threeway intersection of Broadcast Television, Streaming Media, and Social Media. A minority-owned and operated platform.",
            style: paragraphStyle));

    Widget streamSection = Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.all(10.0),
      height: 240.0,
      color: Colors.white,
      child: WebView(
        initialUrl: Uri.dataFromString(
                '<html><body><style type-="" type="" css="">.embed-container iframe,.embed-container object,.embed-container embed {position: absolute;top: 0;left: 0;width: 100%;height: 100%; } </style><div class="embed-container"><iframe id="live" src="https://yourstreamlive.com/embed/iframe/live/7676?&amp;responsive=yes&amp;aspect_ratio=16:9" name="live" frameborder="0" marginwidth="0" marginheight="0" scrolling="auto" allowfullscreen="allowfullscreen" data-mce-fragment="1"></iframe></div></body></html>',
                mimeType: 'text/html')
            .toString(),
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );

    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the HomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: ListView(children: [
        headingSection,
        streamSection,
        subheadingSection,
        bibleSection
      ]),
      drawer: AppDrawer(),
    ); // This trailing comma makes auto-formatting nicer for build methods.
  }
}
