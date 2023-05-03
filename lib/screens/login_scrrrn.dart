import 'package:flutter/material.dart';

import '../constant/constant.dart';
import '../widget/custom_form_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            child: Image.asset('assets/images/Splash1.png',fit: BoxFit.cover,),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child:  Text('Login',style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                  ),),
                ),
                const SizedBox(
                  height: 20,
                ),
                const CustomFormField(
                  title: 'Email',
                  hint: 'example@gmail.com',
                ),

                const CustomFormField(
                  title: 'password',
                  hint: 'Enter your passowrd',
                ),
                TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(
                    label:Text('Password',style: TextStyle(color: primaryColor),),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: primaryColor)
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: primaryColor)
                    ),
                    // border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.lock,color: primaryColor,),
                    suffixIcon: Icon(Icons.remove_red_eye,color: primaryColor,),

                  ),
                  cursorColor: primaryColor,
                  // onChanged: (value){
                  //   password=value;
                  // },
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  alignment: Alignment.topRight,
                  child: const Text('Forget password?',style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,

                  ),),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: double.infinity,
                  height:50,
                  color: primaryColor,
                  child: TextButton(
                    onPressed: (){},
                    child: const Text('Login',style: TextStyle(
                        color: Colors.white
                    ),),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
              ],
            ),
          ),
        ],

      ),
    );
  }
}
