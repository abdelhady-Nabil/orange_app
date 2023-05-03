import 'package:flutter/material.dart';

import '../constant/constant.dart';
class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            child: Image.asset('assets/images/Splash1.png',fit: BoxFit.cover,),
          ),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:  [
                Container(
                  width: 46,
                  height: 49,
                  decoration: BoxDecoration(
                      color: primaryColor,
                    borderRadius: BorderRadius.circular(14)
                  ),

                  child:  const Center(
                    child: Text('T',style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.black
                    ),),
                  ),
                ),
                const SizedBox(
                  width: 0,
                ),
                const Text('ap Cash',style: TextStyle(
                    color: Colors.white,
                  fontSize: 30
                ),),
              ],
            ),
          ),
        ],
        
      ),
    );
  }
}
