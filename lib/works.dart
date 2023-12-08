import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class works extends StatefulWidget {
  const works({Key? key}) : super(key: key);

  @override
  State<works> createState() => _worksState();
}

class _worksState extends State<works> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff514745),
        title: Center(
          child: Text("Works",style: TextStyle(
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
              Text("${dd.s1}",style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 20
              ),),
              SizedBox(height: 10,),
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
  String? s1;
  String? s2;
  Icon? icon;
  String? image;
  data({this.s1,this.s2,this.icon,this.image});
}

List <data> d=[
 data(s1:"Mobile App Developer",
     s2:"Uses programming languages and \n development skills to create,"
         " test,\n and develop applications on mobile devices.",
     icon:Icon(FontAwesomeIcons.mobileScreen),
   image: "images/mobile2.PNG"
 ),
  data(s1:"Backend Developer",
      s2:" focusing on databases, back-end logic,\n application programming interface (APIs)",
      icon:Icon(FontAwesomeIcons.mobileScreen),
      image: "images/backend2.PNG"
  ),
  data(s1:"Presentation Testing",
      s2:"tester typically works with computer software,\n"
          " programmes and applications, to make \nsure they operate correctly",
      icon:Icon(FontAwesomeIcons.mobileScreen),
      image: "images/test2.PNG"
  )
];