import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_test/home.dart';

import 'login.dart';
import 'nav.dart';

class onboarding extends StatefulWidget {
  const onboarding({Key? key}) : super(key: key);

  @override
  State<onboarding> createState() => _onboardingState();
}

class _onboardingState extends State<onboarding> {
  String img="images/p1.png";
  int index=0;
  String txt="●○○";
  String txt2="Creative Freedom";
  String txt3="We believe in giving you the power to express your individuality"
      "Whether you're an artist, designer, photographer, or entrepreneur, our app will effortlessly adapt to your needs.";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
    body:Center(
      child: Column(
        children: [
          Container(
            height: 450,
            //padding: EdgeInsets.all(12),
            child: CircleAvatar(
              radius: 350,
              //  backgroundColor: Colors.grey.withOpacity(0.2),
                backgroundColor: Colors.transparent,
                child: SizedBox(
                    width: 400,
                    height: 400,
                    child: ClipOval(
                      child: Image.asset(img,
                      ),
                    )

                )
            )


          ),
          Container(
            height: 170,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(txt2, style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 0.5,
                  color: Colors.black
                ),),
                SizedBox(height: 10,),
                Text(txt3,textAlign: TextAlign.center, style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 0.5,
                    color: Colors.grey
                ),)

              ],
            ),
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(txt,style: TextStyle(

                fontSize: 25
              ),)
            ],
          ),
          SizedBox(height: 60,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              SizedBox(
                width: 130.0,
                height: 60.0,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    side:BorderSide(
                        width: 1, // the thickness
                        color: Colors.black // the color of the border
                    ),
                    primary: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: Text('SKIP',style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20
                      ,color: Colors.black
                  ),),
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => BnavigationBar()),
                    );
                  },
                ),
              ),
              SizedBox(width: 60,),
              SizedBox(
                width: 130.0,
                height: 60.0,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: Text('NEXT',style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20
                  ),),
                  onPressed: (){
                    if(index==0)change();
                    else if(index==1)change();
                   else if(index==2){change();
                    //index++;
                   }

                    else if(index>2){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginPage()),
                      );}

                     // BnavigationBar();

                   // BnavigationBar();

                  },
                ),
              ),
            ],
          ),
        ],
      ),
    )
    );
  }
  void change(){
    index++;
    txt=load[index];
   img="images/p${index+1}.png";
   txt2=describtion[index];
   txt3=describtion2[index];
   setState(() {
     //عشان يسمع عندي فالشاشه
   });
  }
}

List load=[
  "●○○",
  "○●○",
  "○○●"
];
List describtion=[
"Creative Freedom",
  "Multifunctionality",
  "Constant Innovation"




];
List describtion2=[
  "We believe in giving you the power to express your individuality"
      "Whether you're an artist, designer, photographer, or entrepreneur, our app will effortlessly adapt to your needs.",

  "Our platform is not just limited to showcasing your work; it is a comprehensive tool that allows"
    " you to manage your entire portfolio. You can update your "
    "projects, collaborate with others, and even track analytics "
    "to gain insights into your audience engagement.",

  "We are committed to providing you with the best experience "
      "possible, which is why we have a dedicated team constantly"
      " working on updates and improvements. Your feedback is "
      "invaluable to us, and we encourage you to share your thoughts "
      "and suggestions to help us shape the future of this app."

];

//#b6a68c    light
//#514745    dark
//90807F bants