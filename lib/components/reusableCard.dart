import 'package:flutter/material.dart';
import 'package:mobile7/constants.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({
    @required this.image,
    @required this.title,
    @required this.body,
  });

  final String image;
  final String title;
  final String body;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0),
      child: GestureDetector(
        child: Stack(
          children: <Widget>[
            Container(
              height: 200,
              width: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xFFEAEBF3),
                boxShadow: [
                  new BoxShadow(
                    color: Colors.grey,
                    offset: Offset(5.0, 5.0),
                    blurRadius: 5.0,
                  ),
                ],
              ),
            ),
            Positioned(
              left: 10,
              top: 10,
              child: Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(0),
                    height: 120,
                    width: 280,
                    decoration: kAnnouncementContainerTopDecoration,
                    child: FittedBox(
                      fit: BoxFit.fill,
                      child: Image.asset(image),
                    ),
                  ),
                  Container(
                    height: 60,
                    width: 280,
                    decoration: kAnnouncementContainerBottomDecoration,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Text(
                            title,
                            style: kAnnouncementTitleStyle,
                            maxLines: 1,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Text(
                            body,
                            maxLines: 1,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
