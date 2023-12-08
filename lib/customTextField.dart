import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget{
  CustomTextField({this.hintText,this.icon,required this.controller,required this.type,this.validate});

  String? hintText;
  Icon? icon;
  TextEditingController controller;
  TextInputType type;
  String? Function(String?)?  validate;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: type,
      validator: validate,
      decoration: InputDecoration(
        hintText: hintText,
        prefixIcon: icon,
        hintStyle: TextStyle(color: Color(0xffb6a68c),),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xff514745),
          ),
        ),
        /* border: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.brown,
                )
              )*/
      ),

    );

  }


}