import 'package:flutter/material.dart';
import 'package:roltv/components/drawer.dart';

const headingStyle = TextStyle(fontSize: 40, color: Colors.white);
const paragraphStyle = TextStyle(fontSize: 20, color: Colors.white);

class BoardOfDirectorsPage extends StatelessWidget {
  const BoardOfDirectorsPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget headingSection = Container(
      padding: const EdgeInsets.all(32),
      child: Text("Our Board of Directors:", style: headingStyle),
    );

    Widget boardSection =
        Container(padding: const EdgeInsets.all(32), child: Text('''
- Vivian McGee 

- Pastor James Black 

- Jonathan Salmon-Vasques 

- Rupert Salmon 

- Pastor Hector Torres 

- Jay Wintermeyer

- Dr. Pauline Salmon  

- Meghin Burns  

- Dr. Terry Roth  

- Ogden Harry  

- Ron Anderson 

- Lonika Kim Wagner 

- Travis Tramel 
        ''', style: paragraphStyle));

    return Scaffold(
      appBar: AppBar(
        title: Text("Board of Directors"),
      ),
      body: ListView(children: [
        headingSection,
        boardSection,
      ]),
      drawer: AppDrawer(),
    );
  }
}
