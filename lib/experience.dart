import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class experience extends StatefulWidget {
  const experience({Key? key}) : super(key: key);

  @override
  State<experience> createState() => _experienceState();
}

class _experienceState extends State<experience> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff514745),
        title: Center(
          child: Text("Experience",style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.white
          ),),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
          ),
          Container(
            width: double.infinity,
            height: 630,
            //margin: EdgeInsets.all(20),
            child: ListView.builder(
              itemBuilder: (context,index)=> card(d[index],context),
              //separatorBuilder: (context,index)=>SizedBox(height: 20,)
              itemCount: d.length,
            ),
          ),
        ],
      ),
    );
  }
}



Widget card(data dd,BuildContext context){
  return Padding(
    padding: const EdgeInsets.all(5.0),
    child: Container(
      width: double.infinity,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(15)
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),

      child:  Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 60,
                  height: 60,
                  child: Image.asset("${dd.image}"),
                )


                //  Icon(FontAwesomeIcons.mobileScreen,size: 70,color: Colors.black45,)
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Text("${dd.s2}",style: TextStyle(
                  color: Colors.black45
              ),)

            ],
          )
        ],
      ),

    ),
  );
}


class data{
  String? s2;
  Icon? icon;
  String? image;
  data({this.s2,this.icon,this.image});
}

List <data> d=[
data(
s2:"Collaborated with a team of designers\n"
    " and developers to create a mobile game\n"
    " that gained over 1 million downloads on \n"
    "both iOS and Android platforms.",
icon:Icon(FontAwesomeIcons.mobileScreen),
image: "images/team.PNG"
),
data(
s2:" Utilized Agile methodology to effectively \nmanage project timelines "
    "and deliver \nhigh-quality code for mobile app projects.",
icon:Icon(FontAwesomeIcons.mobileScreen),
image: "images/agile.PNG"
),
data(
s2:"Provided technical support and \ntroubleshooting assistance to end-users,\n"
    " resolving issues promptly and maintaining\n a high level of customer satisfaction.",
icon:Icon(FontAwesomeIcons.mobileScreen),
image: "images/support.PNG"
),
  data(
      s2:"Conducted regular code reviews and debugging \nsessions to "
          "ensure optimal performance and\n efficiency of mobile applications.",
      icon:Icon(FontAwesomeIcons.mobileScreen),
      image: "images/correct.PNG"
  ),
  data(
      s2:"Stayed up-to-date with the latest mobile \ndevelopment trends and technologies,\n actively applying new"
          " knowledge to enhance\n app development processes and improve\n user interfaces.",
      icon:Icon(FontAwesomeIcons.mobileScreen),
      image: "images/date.PNG"
  )
];