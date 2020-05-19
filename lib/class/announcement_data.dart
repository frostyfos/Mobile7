import 'package:mobile7/class/announcement.dart';
//import 'networking.dart';

class AnnouncementData {
  List<Announcement> _announcementList = [];

  void getAnnouncementData() {
    _announcementList = [];
    for (int i = 0; i < 5; i++) {
      _announcementList.add(
        Announcement(
          image: 'images/trans7.png',
          title: 'Announcement title number $i',
          body: 'Announcement body numner $i',
        ),
      );
    }
  }

  String getAnnouncementImage(int index) {
    return _announcementList[index].image;
  }

  String getAnnouncementTitle(int index) {
    return _announcementList[index].title;
  }

  String getAnnouncementBody(int index) {
    return _announcementList[index].body;
  }
}
