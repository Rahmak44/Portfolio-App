import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class hoppy extends StatefulWidget {
  const hoppy({Key? key}) : super(key: key);

  @override
  State<hoppy> createState() => _hoppyState();
}

class _hoppyState extends State<hoppy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff514745),
        title: Center(
          child: Text("Hobbies",style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.white
          ),),
        ),
      ),

      body: MasonryGridView.builder(
        itemCount: 7,
          gridDelegate: SliverMasonryGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (context,index)=>Padding(padding: EdgeInsets.all(3.0),
          child: Image.asset("images/${index+1}.png",),)),
    );
  }
}
