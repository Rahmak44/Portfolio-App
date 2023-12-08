import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class skills extends StatefulWidget {
  const skills({Key? key}) : super(key: key);

  @override
  State<skills> createState() => _skillsState();
}

class _skillsState extends State<skills> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff514745),
        title: Center(
          child: Text("Skills",style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.white
          ),),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(5.0),
        child: MasonryGridView.builder(
            itemCount: d.length,
            gridDelegate: SliverMasonryGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            itemBuilder: (context,index)=>card(d[index],context),
             // child: Image.asset("images/${index+1}.png",)
          ),
      ),
    );
  }
}



Widget card(data dd,BuildContext context){
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(

      width: 100,
      height: 90,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(3)
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
               /* Container(
                  width: 60,
                  height: 60,
                  child: Image.asset("${dd.image}"),
                )*/


                //  Icon(FontAwesomeIcons.mobileScreen,size: 70,color: Colors.black45,)
              ],
            ),
          ),
          Row(
           // mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("${dd.s1}",style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 20
              ),),
              SizedBox(height: 10,),


            ],
          )
        ],
      ),

    ),
  );
}


class data{
  String? s1;

  //String? image;
  data({this.s1,});
}

List <data> d=[
data(s1:"Decision-making",

//image: "images/mobile2.PNG"
),
data(s1:"Collaboration",

//image: "images/backend2.PNG"
),
data(s1:"Research skills",

//image: "images/test2.PNG"
),
  data(s1:"Multitasking",

//image: "images/test2.PNG"
  ),
  data(s1:"Adaptability",

//image: "images/test2.PNG"
  ),
  data(s1:"Problem\nsolving",

//image: "images/test2.PNG"
  ) ,
  data(s1:"Customer\n service",

//image: "images/test2.PNG"
  ), data(s1:"Attention to \ndetails",

//image: "images/test2.PNG"
  ),
  data(s1:"Creativity",

//image: "images/test2.PNG"
  ),
  data(s1:"Leadership",

//image: "images/test2.PNG"
  ),
  data(s1:"Communication",

//image: "images/test2.PNG"
  ),
];