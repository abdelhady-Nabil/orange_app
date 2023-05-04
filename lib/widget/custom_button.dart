import 'package:flutter/material.dart';

import '../constant/constant.dart';
class CustomButton extends StatelessWidget {
  final String title;
  CustomButton({
    required this.title
});

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: double.infinity,
      height:50,

      decoration: BoxDecoration(
          color: secondColor,
          borderRadius: BorderRadius.circular(10)
      ),
      child: TextButton(
        onPressed: (){},
        child:  Text(title,style: const TextStyle(
          color: Colors.white,
        ),),
      ),
    );
  }
}
