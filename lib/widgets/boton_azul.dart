import 'package:flutter/material.dart';

class BotonAzul extends StatelessWidget {

  final String buttonText;
  final VoidCallback onPressed;

  const BotonAzul({
    Key? key, 
    required this.buttonText, 
    required this.onPressed}) 
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
            onPressed: onPressed, 
            style: ButtonStyle(
              elevation: MaterialStateProperty.all(0),
              backgroundColor: MaterialStateProperty.all(Colors.blue),
              shape: MaterialStateProperty.all(const StadiumBorder()),
              
            ),
            child: Container(
              width: double.infinity,
              height: 55,
              child: Center(
                child: Text(buttonText, style: const TextStyle( fontSize:  18),),
              ),
            )
            );
  }
}