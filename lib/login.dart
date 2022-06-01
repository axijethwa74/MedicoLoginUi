// ignore_for_file: sized_box_for_whitespace
// ignore: unused_import
import 'package:fluttertoast/fluttertoast.dart';

import 'package:flutter/material.dart';

class Login extends StatelessWidget {

  const Login({Key? key}) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       debugShowCheckedModeBanner: false,
      title: "Login",
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        useMaterial3: true,
      ),
      home:  Scaffold(
        appBar: AppBar(
          centerTitle: true,
          
          title: const Text('Welcome to Medico', style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold,color: Color.fromARGB(255, 9, 3, 87)),),
        ),
        body: Center(
          child : SingleChildScrollView(
          child: Column(
            children: [
            //const SizedBox(height: 0,),
             const Text("Sign Up",
              style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold,color: Color.fromARGB(255, 36, 4, 110)),
              textAlign: TextAlign.right,
              ),
             const Text("to start working",textAlign: TextAlign.center, style: TextStyle(fontSize: 20.0,color: Colors.grey,),),
         const SizedBox(height: 30,),
         const Padding(
           padding: EdgeInsets.symmetric(horizontal: 90),
           child: TextField(
                    keyboardType: TextInputType.emailAddress,

                    decoration: InputDecoration(border :OutlineInputBorder(),
                    hintText: "Username :",
                    prefixIcon: Icon(Icons.email),
                    ),

                  ),
         ),
                 const SizedBox(height: 20,),
         const Padding(
           padding: EdgeInsets.symmetric(horizontal: 90),
           child: TextField(
                    keyboardType: TextInputType.emailAddress,
                    obscureText: true,
                    decoration: InputDecoration(border :OutlineInputBorder(),
                    hintText: "Password:",
                    prefixIcon: Icon(Icons.lock),
                    ),
           ),
           
         ),
          const SizedBox(height: 30,),
     Row(
       mainAxisAlignment: MainAxisAlignment.center,
       children:  [
         ElevatedButton(onPressed: showToast, 
         // ignore: sort_child_properties_last
         child: const Text("Sign Up",
         style: TextStyle( color: Colors.white ,fontSize: 16),
         ),
         style: ElevatedButton.styleFrom(
           minimumSize: const Size(200, 50),
            primary: const Color.fromARGB(255, 36, 4, 110), 
         ), 
),
 


        
       ],
      ),
             
            ],),
      
              ),
                      
  
            

          ),
          
        ),
  
     
    

    
    );
   
  }
   

  void showToast()=> Fluttertoast.showToast(
    msg: "Welcome",
    fontSize: 100,
    textColor: Colors.black,
    ); 
  



  }

