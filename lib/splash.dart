import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_test/onboarding.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 4),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) =>
                SecondScreen()
            )
        )
    );
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.only(top: 180),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  width: 350,
                  height: 350,

                    // borderRadius: BorderRadius.circular(20.0),
                    child:
                    Image.asset('images/dark1.png',fit: BoxFit.cover,),

                ),
              ),
              SizedBox(height: 70,),
              Row(
                mainAxisAlignment:   MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Portfolio",style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 5,
                      color: Color(0xff514745)
                  ),)
                ],)


            ],
          ),
        ),
      ),

    );
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.only(top: 180),
          child: Column(

            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Container(
                  width: 350,
                  height: 350,
                  child: ClipRRect(
                    // borderRadius: BorderRadius.circular(20.0),
                    child:
                    Image.asset('images/dark.png',fit: BoxFit.cover,),
                  ),
                ),
              ),
              SizedBox(height: 70,),
              Column(
                mainAxisAlignment:   MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Portfolio",style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 5,
                      color: Color(0xff90807F)
                  ),),
                  SizedBox(height: 40,),
                  IconButton(onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => onboarding()),
                    );
                  },
                    icon: Icon(Icons.arrow_forward,color: Color(0xff514745),size: 40,),color: Colors.black,)
                 // Icon(Icons.arrow_forward,color: Colors.black,)
                ],)



            ],
          ),
        ),
      ),
    );
  }
}

//#b6a68c    light
//#514745    dark
