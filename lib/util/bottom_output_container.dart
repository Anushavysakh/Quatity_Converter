import 'package:flutter/material.dart';

class BottomOutputContainer extends StatelessWidget {
  const BottomOutputContainer({
    Key? key,
    required this.bottomOutput,
  }) : super(key: key);

  final String bottomOutput;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(12),
        color: Colors.grey,
        height: 50,
        width: MediaQuery.of(context).size.width,
        child: Container(padding: EdgeInsets.all(17),
          child: Text(bottomOutput,textAlign: TextAlign.center,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),
          color: Colors.grey,
        ));
  }
}
