import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    double width = screenSize.width;
    double height = screenSize.height;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('My Quiz App'),
          backgroundColor: Colors.deepPurple,
          leading: Container(),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Image.asset('images/quiz.png', width: width * 0.8),
            ),
            Padding(
              padding: EdgeInsets.all(width * 0.024),
            ),
            Text(
              'Flutter Quiz App',
              style: TextStyle(
                fontSize: width * 0.065,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              '퀴즈를 풀기 전 안내사항입니다.',
              textAlign: TextAlign.center,
            ),
            Padding(
              padding: EdgeInsets.all(width * 0.048),
            ),
            _buildStep(width, '1.'),
            _buildStep(width, '2.'),
            _buildStep(width, '3.'),

            Padding(
              padding: EdgeInsets.all(width * 0.048),
            ),
            Container(
              padding: EdgeInsets.only(bottom: width * 0.036),
              child: Center(
                child: ButtonTheme(
                  minWidth: width * 0.8,
                    height: height * 0.8,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: ElevatedButton(
                      onPressed:() {},
                      style: ElevatedButton.styleFrom(
                      elevation: 5,
                      backgroundColor: Colors.deepPurple,
                      // 테두리 모양 설정
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                      child: Text(
                        'now get the test.',
                         style:  TextStyle(color: Colors.white),
                         ),
                         ),
                   ),
              ),
            )
          ],
        ),
      ),
    );
  }
  Widget _buildStep(double width, String title) {
      return Container(
        padding: EdgeInsets.fromLTRB(width * 0.048, width * 0.024, width * 0.048, width * 0.024),
        child: Row(crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
           Icon(
            Icons.check_box,
            size: width * 0.04,
           ),
           Padding(
            padding: EdgeInsets.only(right: width * 0.024),
           ),
           Text(title),
        ],
        ),
      );

    }
}
