import 'package:flutter/material.dart';

class ButtonWidget extends StatefulWidget {
  const ButtonWidget({super.key,required this.ontap,required this.buttonText});
    final Function() ontap;
    final String buttonText;

  @override
  State<ButtonWidget> createState() => _ButtonWidgetState();
}

class _ButtonWidgetState extends State<ButtonWidget> {
  

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:widget.ontap,
      child: Container(
        width: 250,
        height: 50,
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 77, 70, 212),
            borderRadius: BorderRadius.circular(20)),
        child: Center(child: Text(widget.buttonText,style: TextStyle(color: Colors.white,fontSize: 22),)),
      ),
    );
  }
}
