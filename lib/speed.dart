import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quatity_converter/speed_conversion.dart';
import 'package:quatity_converter/util/bottom_output_container.dart';

class SpeedConverter extends StatefulWidget {
  const SpeedConverter({Key? key}) : super(key: key);

  @override
  State<SpeedConverter> createState() => _SpeedConverterState();
}

class _SpeedConverterState extends State<SpeedConverter> {
  String topSelected = "Meter per second";
  String bottomSelected = "Meter per second";
  var bottomOutput = " ";
  String topInput = " " ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Speed Converter"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(children: <Widget>[
            Center(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.all(12),
                        child: DropdownButton<String>(
                            dropdownColor: Colors.grey,
                            value: topSelected,
                            items: [
                              DropdownMenuItem(
                                child: Text("Meter per second"),
                                value: 'Meter per second',
                              ),
                              DropdownMenuItem(
                                child: Text("Foot per second"),
                                value: 'Foot per second',
                              ),
                              DropdownMenuItem(
                                child: Text("Kilometer per hour"),
                                value: 'Kilometer per hour',
                              ),
                              DropdownMenuItem(
                                child: Text("Miles per hour"),
                                value: 'Miles per hour',
                              ),
                              DropdownMenuItem(
                                child: Text("Knot"),
                                value: 'Knot',
                              )
                            ],
                            onChanged: (value) {
                              setState(() {
                                topSelected = value!;
                              });
                            }),
                      ),
                      Container(
                          margin: EdgeInsets.all(12),
                          color: Colors.grey,
                          child: TextField(
                            textAlign: TextAlign.center,
                            autofocus: true,
                            style: TextStyle(
                                color: Colors.black, fontWeight: FontWeight.bold),
                            keyboardType: TextInputType.number,
                            onChanged: (text) {
                              setState(() {
                                topInput = text;
                                if(topInput != " " && bottomOutput != " ") {
                                  SpeedConversion speed = SpeedConversion(
                                      topInput, topSelected, bottomSelected);
                                  bottomOutput = speed.getConversion();
                                }
                              });
                            },
                          )),
                      Container(
                        margin: EdgeInsets.all(12),
                        child: DropdownButton<String>(
                            dropdownColor: Colors.grey,
                            value: bottomSelected,
                            items:  const [
                              DropdownMenuItem(
                                child: Text("Meter per second"),
                                value: 'Meter per second',
                              ),
                              DropdownMenuItem(
                                child: Text("Foot per second"),
                                value: 'Foot per second',
                              ),
                              DropdownMenuItem(
                                child: Text("Kilometer per hour"),
                                value: 'Kilometer per hour',
                              ),
                              DropdownMenuItem(
                                child: Text("Foot"),
                                value: 'Foot',
                              ),
                              DropdownMenuItem(
                                child: Text("Knot"),
                                value: 'Knot',
                              ),
                            ],
                            onChanged: (value) {
                              print(value);
                              setState(() {
                                bottomSelected = value!;

                                if(topInput != " " && bottomOutput != " ") {
                                  SpeedConversion speed = SpeedConversion(
                                      topInput, topSelected, bottomSelected);
                                  bottomOutput = speed.getConversion();
                                }
                              });
                            }),
                      ),
                      BottomOutputContainer(bottomOutput: bottomOutput)

                    ])),
          ]),
        ));
  }
}

