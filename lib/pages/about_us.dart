import 'package:flutter/material.dart';
import 'package:roltv/components/drawer.dart';

const headingStyle = TextStyle(fontSize: 40, color: Colors.white);
const paragraphStyle = TextStyle(fontSize: 17, color: Colors.white);

class AboutUsPage extends StatelessWidget {
  const AboutUsPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget educationHeadingSection = Container(
      padding: const EdgeInsets.all(32),
      child: Text("OUR MISSION IN EDUCATION", style: headingStyle),
    );

    Widget educationSection = Container(
        padding: const EdgeInsets.all(32),
        child: Text(
            '''In concert with our mission to be an impactful force in the community, we at Rays Of Light Broadcasting have worked to create The J&J Scholarship Fund. We understand first hand the difficulties that parents and students have in affording a college education and believe it is the fundamental duty of the faithful to lift up those who seek opportunities and who desire to be successful and transformative members of their communities.

We believe that God has called us to further strengthen our communities by helping to educate the minds of our youth who will, in turn, lift up their communities and be positive and transformative forces of change. Beyond just providing monetary funding we also will be pushing for a mentoring component to our fund in which young aspirational youth will be given the opportunity to be mentored by successful individuals that will advise them on how to prepare for the future and how to accomplish their goals, through this mentoring component we will seek to call on those that might wish to give of their time rather than just monetarily inspiring those that have seen success in their lives to give back by mentoring the next generation of young leaders and professionals.
''',
            style: paragraphStyle));

    Widget mediaHeadingSection = Container(
      padding: const EdgeInsets.all(32),
      child: Text("OUR MISSION IN MEDIA", style: headingStyle),
    );

    Widget mediaSection = Container(
      padding: const EdgeInsets.all(32),
      child: Text('''Media's Key Role in Ministry:

The Technology:

- ROKU – 52 million boxes
- Apple TV 10 Million
- FireTV – Amazon 30 Million
- Glory STAR
- Satellite Broadcast
- IOS & Android APP
- Websites
- In addition, live events to social media
- Facebook
- YouTube and others 

We call this “Meeting people where they are”

- Whatever Platform they are on
- Wherever they are, internet/cell service 
  required
- Whenever they are ready, we are delivering 
  the Gospel 24/7 worldwide
- Digital and social media are playing an 
  increasingly important role in evangelism by 
  exponentially expanding the net.  Many 
  people turn to media for its capacity to 
  inform, educate, and entertain.
- Most respondents are motivated to 
  understand and learn how to cope with their 
  changing society and lifestyle. Others desire 
  to watch TV to get a biblical perspective on 
  moral and political issues.
- Quality content is key to your success in 
  reaching and influencing people through 
  media. Christianity is the greatest story ever 
  told. The Bible gives us content on every 
  issue related to the human condition. As 
  wise and creative Christians, we need to be 
  committed to creating and sharing 
  evangelistic content for the following 3 
  stages: SOW, REAP, DISCIPLE''', style: paragraphStyle),
    );

    Widget determiningSection = Container(
        padding: const EdgeInsets.all(32),
        child: Text(
            "Determining how to best leverage these platforms will make a significant difference in the financial viability of church entities and your ability to spread the Gospel. Adaption of this technology is critical and must be swift. The learning curve is steep and cumbersome. Partnerships with existing media companies with the tools and the experience to implement your plans are the safest and most expedient way forward. Blessings…",
            style: paragraphStyle));

    return Scaffold(
      appBar: AppBar(
        title: Text("About Us"),
      ),
      body: ListView(children: [
        educationHeadingSection,
        educationSection,
        mediaHeadingSection,
        mediaSection,
        determiningSection
      ]),
      drawer: AppDrawer(),
    );
  }
}
