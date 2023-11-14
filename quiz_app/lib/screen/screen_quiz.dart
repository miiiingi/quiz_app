// ignore_for_file: import_of_legacy_library_into_null_safe
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:quiz_app/model/model_quiz.dart';

class QuizScreen extends StatefulWidget {
  List<Quiz> quizs;
  QuizScreen({required this.quizs});
  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  List<int> _answers = [-1, -1, -1];
  List<bool> _answerState = [false, false, false, false];
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    double width = screenSize.width;
    double height = screenSize.height;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.deepPurple,
        body: Center(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: Colors.deepPurple),
            ),
            width: width * 0.85,
            height: height * 0.5,
            // child: Swiper(
            //   // controller: _controller,
            //   physics: NeverScrollableScrollPhysics(),
            //   loop: false,
            //   itemCount: widget.quizs.length,
            //   itemBuilder: (BuildContext context, int index) {
            //     return _buildQuizCard(widget.quizs[index], width, height);
            //   },
            // ),
            child: CarouselSlider(
              items: [
                Container( 
                  margin: EdgeInsets.all(6.0), 
                  decoration: BoxDecoration( 
                    borderRadius: BorderRadius.circular(8.0), 
                    image: DecorationImage( 
                      image: NetworkImage("ADD IMAGE URL HERE"), 
                      fit: BoxFit.cover, 
                    ), 
                  ), 
                ), 
              //   // yourItemList.map((item) {
              //   return Builder(
              //     builder: (BuildContext context) {
              //       return _buildQuizCard(widget.quizs[index], width, height);
              //     },
              //   );
              // }).toList(),],
              ],
              options: CarouselOptions( 
                height: 180.0, 
                enlargeCenterPage: true, 
                autoPlay: true, 
                aspectRatio: 16 / 9, 
                autoPlayCurve: Curves.fastOutSlowIn, 
                enableInfiniteScroll: true, 
                autoPlayAnimationDuration: Duration(milliseconds: 800), 
                viewportFraction: 0.8, 
              ), 
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildQuizCard(Quiz quiz, double width, double height) {
    return Container(
        decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      border: Border.all(color: Colors.white),
    ));
  }
}
