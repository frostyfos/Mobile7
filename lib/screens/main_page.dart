import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:mobile7/components/appBarIconButton.dart';
import 'package:mobile7/components/mainMenuIconButton.dart';
import 'package:mobile7/components/mainLabel.dart';
import 'package:mobile7/components/reusableCard.dart';
import 'package:mobile7/class/announcement_data.dart';
import 'package:mobile7/class/information_data.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  AnnouncementData announcementData = AnnouncementData();
  InformationData informationData = InformationData();

  List<Widget> topAnnouncementCard() {
    List<Widget> announcementCard = [];
    for (int i = 0; i < 5; i++) {
      announcementCard.add(
        ReusableCard(
          image: announcementData.getAnnouncementImage(i),
          title: announcementData.getAnnouncementTitle(i),
          body: announcementData.getAnnouncementBody(i),
        ),
      );
    }
    announcementCard.add(
      IconButton(
        icon: Icon(Icons.keyboard_arrow_right),
        color: Colors.teal,
        iconSize: 50.0,
        onPressed: () {},
      ),
    );

    return announcementCard;
  }

  List<Widget> topInformationCard() {
    List<Widget> informationCard = [];
    for (int i = 0; i < 5; i++) {
      informationCard.add(
        ReusableCard(
          image: informationData.getInformationImage(i),
          title: informationData.getInformationTitle(i),
          body: informationData.geInformationBody(i),
        ),
      );
    }
    informationCard.add(
      IconButton(
        icon: Icon(Icons.keyboard_arrow_right),
        color: Colors.teal,
        iconSize: 50.0,
        onPressed: () {},
      ),
    );

    return informationCard;
  }

  @override
  void initState() {
    super.initState();
    announcementData.getAnnouncementData();
    informationData.getInformationData();
  }

//  AnnouncementCard announcementBuilder(BuildContext context, int index) {
//    return AnnouncementCard(
//      image: announcementData.getAnnouncementImage(index),
//      title: announcementData.getAnnouncementTitle(index),
//      body: announcementData.getAnnouncementBody(index),
//    );
//  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: Center(
          child: AppBarIconButton(
            icon: Icons.notifications,
            onPress: () {},
          ),
        ),
        title: Image(
          width: 130.0,
          image: AssetImage('images/trans7.png'),
        ),
        actions: <Widget>[
          Center(
            child: AppBarIconButton(
              icon: Icons.search,
              onPress: () {},
            ),
          ),
        ],
      ),
      body: Container(
        color: Color(0xFFF0F0F3),
        child: ListView(
          children: <Widget>[
            Column(
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    MainLabel(
                      label: 'Menu',
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        MainMenuIconButton(
                          icon: Icons.assignment,
                          color: Colors.lightBlue,
                          label: 'Executive Report',
                          onPress: () {},
                        ),
                        MainMenuIconButton(
                          icon: Icons.chat,
                          color: Colors.teal,
                          label: 'Forum',
                          onPress: () {},
                        ),
                        MainMenuIconButton(
                          icon: Icons.assignment_turned_in,
                          color: Colors.amberAccent,
                          label: 'Approval',
                          onPress: () {},
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        MainMenuIconButton(
                          icon: Icons.account_balance_wallet,
                          color: Colors.green,
                          label: 'Reimbursement',
                          onPress: () {},
                        ),
                        MainMenuIconButton(
                          icon: Icons.check_box,
                          color: Colors.indigo,
                          label: 'Presence',
                          onPress: () {},
                        ),
                        MainMenuIconButton(
                          icon: Icons.live_tv,
                          color: Colors.red,
                          label: 'Live Streaming',
                          onPress: () {},
                        ),
                      ],
                    ),
                  ],
                ), //Main Icon Button
                SizedBox(
                  height: 5.0,
                  child: Container(
                    decoration: BoxDecoration(
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                          color: Color(0xFFEAEBF3),
                        )
                      ],
                    ),
                  ),
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        MainLabel(
                          label: 'Announcement',
                        ),
                        GestureDetector(
                          onTap: () {
                            print('see all announcement tapped');
                          },
                          child: Text(
                            'See All',
                            style: TextStyle(
                              color: Colors.lightBlueAccent,
                              fontSize: 20.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Container(
                        height: 250.0,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: topAnnouncementCard(),
                        ),
                      ),
                    ),
                  ],
                ),

                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        MainLabel(
                          label: 'Information',
                        ),
                        GestureDetector(
                          onTap: () {
                            print('see all information tapped');
                          },
                          child: Text(
                            'See All',
                            style: TextStyle(
                              color: Colors.lightBlueAccent,
                              fontSize: 20.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Container(
                        height: 250.0,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: topInformationCard(),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

//ListView.builder(
//itemBuilder: announcementBuilder,
//scrollDirection: Axis.horizontal,
//itemCount: 5,
//),
