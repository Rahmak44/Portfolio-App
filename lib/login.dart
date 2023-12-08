import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'customTextField.dart';
import 'nav.dart';

class LoginPage extends StatelessWidget{
  var emailController = TextEditingController();
  var passwordlController = TextEditingController();
  var formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Form(
            key: formKey,
            child: Column(
              children: [
                SizedBox(height: 30,),
                Container(
                    height: 200,
                    width: 200,
                    child: Image.asset("images/dark1.png")
                ),
                SizedBox(height: 60,),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text ("Make your Portfoilo..",
                    style: TextStyle(fontSize: 30,color: Color(0xff514745),fontFamily: 'pacifico'),
                  ),
                ),
                SizedBox(height: 20,),
                CustomTextField(
                  controller: emailController,
                  type: TextInputType.emailAddress,
                  validate: ( value){
                    if(value!.isEmpty){
                      return "email must not be empty";
                    }
                    return null;
                  },
                  hintText: "Enter email",
                  icon: Icon(Icons.email,color: Color(0xffb6a68c),),
                ),
                SizedBox(height: 25,),
                CustomTextField(
                  controller: passwordlController,
                  type: TextInputType.number,
                  validate: ( value){
                    if(value!.isEmpty){
                      return "password must not be empty";
                    }
                    return null;
                  },
                  hintText: "Enter Password",
                  icon: Icon(Icons.lock,color: Color(0xffb6a68c),),
                ),
                SizedBox(height: 80,),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.brown[600],
                      borderRadius: BorderRadius.circular(10)
                  ),
                  width: 200,
                  height: 60,
                  child: MaterialButton(
                    color: Color(0xff514745),
                    elevation: 5,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => BnavigationBar()),
                      );
                      if (formKey.currentState!.validate()){
                        print(emailController.text);
                        print(passwordlController.text);
                      }
                    },
                    child: Text("LOGIN",
                      style:TextStyle(fontSize:20,color: Colors.white),),
                  ),

                )
              ],
            ),
          ),
        ),
      ),


    );
  }

}