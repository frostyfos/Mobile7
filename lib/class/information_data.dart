import 'package:mobile7/class/information.dart';
//import 'networking.dart';

class InformationData {
  List<Information> _informationList = [];

  void getInformationData() {
    _informationList = [];
    for (int i = 0; i < 5; i++) {
      _informationList.add(
        Information(
          image: 'images/trans7.png',
          title: 'Information title number $i',
          body: 'Information body numner $i',
        ),
      );
    }
  }

  String getInformationImage(int index) {
    return _informationList[index].image;
  }

  String getInformationTitle(int index) {
    return _informationList[index].title;
  }

  String geInformationBody(int index) {
    return _informationList[index].body;
  }
}
