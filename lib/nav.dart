import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio_test/experience.dart';
import 'package:portfolio_test/profile.dart';
import 'package:portfolio_test/skills.dart';
import 'package:portfolio_test/works.dart';

import 'hobby.dart';

class BnavigationBar extends StatefulWidget{
  @override
  _BnavigationBarState createState() =>  _BnavigationBarState();

}
class _BnavigationBarState extends State<BnavigationBar>{
  int index=0;
  final pages =[
    ProfileScreen(),
    Container(
      width: double.infinity,
      height: double.infinity,
      child: skills(),
    ),
    Container(
      width: double.infinity,
      height: double.infinity,
      child: experience(),
    ),
    Container(
      width: double.infinity,
      height: double.infinity,
      child: works(),
    ),
    Container(
      width: double.infinity,
      height: double.infinity,
      child: hoppy(),
    ),
  ];

  int index2=0;
  void x1(int index){
    setState(() {
      index2=index;
    });

  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold
      (

      bottomNavigationBar: BottomNavigationBar(
        //unselectedLabelStyle: const TextStyle(color: Colors.white, fontSize: 14),
        //selectedLabelStyle: const TextStyle(color: Colors.white, fontSize: 14),
        onTap: x1,
        currentIndex: index2,
        type: BottomNavigationBarType.fixed,
        backgroundColor:  Color(0xff514745),
        unselectedFontSize: 20,


        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            backgroundColor: Color(0xfff94a0c),
            icon: Icon(FontAwesomeIcons.solidUser,color: Colors.white,size: 30),
            label: '',

          ),
          BottomNavigationBarItem(
            backgroundColor: Color(0xfff94a0c),
            icon: Icon(Icons.library_books_outlined,color: Colors.white,size: 30),
            label: '',

          ),
          BottomNavigationBarItem(
            backgroundColor: Color(0xfff94a0c),
            icon: Icon(FontAwesomeIcons.book,color: Colors.white,size: 26),
            label: '',

          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.briefcase,color: Colors.white),
            label: '',
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Icon(Icons.stairs_outlined,size: 30,color: Colors.white),

          ),
        ],

      ),
      body: pages[index2],
    );
  }

}