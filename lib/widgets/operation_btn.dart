import 'package:flutter/material.dart';

class Operation extends StatelessWidget {
  const Operation({super.key, required this.txt, required this.onPressed, });
  final String txt;
  final VoidCallback onPressed;
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              shape: BeveledRectangleBorder(
                  borderRadius: BorderRadius.circular(5))),
          onPressed: onPressed,
          child: 
              Text(
                txt,
                style: TextStyle(fontSize: 22),
              ),
            
          ),
    );
  }
}
