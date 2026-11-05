import 'package:flutter/material.dart';
import 'package:fristflutter/Components/AppBar.dart';
import 'package:fristflutter/Pages/LoginScreen.dart';
import 'package:wave/wave.dart';

class SignUpscreen extends StatelessWidget {
  TextEditingController Name = TextEditingController();
  TextEditingController Email = TextEditingController();
  TextEditingController Password = TextEditingController();
  GlobalKey<FormState> Key = GlobalKey();
  SignUpscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Sign Up Page", style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.teal,
      ),
      body:

        Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(top: 40,bottom: 20),
                padding: EdgeInsets.all(10),
                child: Icon(Icons.person, color: Colors.white, size: 100,),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.orangeAccent
                ),
              ),
              Container(
                margin: EdgeInsets.all(20),
                child: Column(
                  children: [
                    Form(
                      key: Key,
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(bottom: 20),
                            child: TextFormField(
                              validator: (value) {
                                if(value!.isEmpty){
                                  return "Value Empty";
                                }
                                if(value != null){
                                  return "Value equal Null";
                                }
                              },
                              controller: Name,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                label: Text("Full Name"),
                                prefixIcon: Icon(Icons.person),
                                labelStyle: TextStyle(fontSize: 12, )
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(bottom: 20),
                            child: TextFormField(
                              validator: (value) {
                                if(!value!.contains("@")){
                                  return "Email Must be Contain @";
                                }
                                if(value.isEmpty){
                                  return "Value Empty";
                                }
                                if(value != null){
                                  return "Value equal Null";
                                }
                              },
                              controller: Email,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                label: Text("Email"),
                                prefixIcon: Icon(Icons.mail),
                                labelStyle: TextStyle(fontSize: 12, )
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(bottom: 20),
                            child: TextFormField(
                              validator: (value) {
                                if(value!.isEmpty){
                                  return "Value Empty";
                                }
                                if(value != null){
                                  return "Value equal Null";
                                }
                              },
                              controller: Password,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                label: Text("Password"),
                                prefixIcon: Icon(Icons.lock),
                                labelStyle: TextStyle(fontSize: 12, )
                              ),
                            ),
                          ),
                          ElevatedButton(onPressed: (){Key.currentState!.validate();}, child: Text("Sign Up"), style: ElevatedButton.styleFrom(backgroundColor: Colors.teal, iconColor: Colors.white),),
                          TextButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Loginscreen(),));}, child: Text("Already have An Account? Log In"))
                        ],
                      ),
                    )
                    ],
                  ),
                ),
            ],
          ),
        ),




      // WaveWidget(
      //   config: CustomConfig(
      //     gradients: [
      //       [Colors.blue, Colors.blue.shade200],
      //       [Colors.blue.shade200, Colors.blue.shade100],
      //     ],
      //     durations: [35000, 19440],
      //     heightPercentages: [0.25, 0.35],
      //   ),
      //   size: Size(double.infinity, 200),
      // )
    );
  }
  
}