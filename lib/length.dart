import 'package:flutter/material.dart';
import 'package:quatity_converter/length_conversion.dart';
import 'package:quatity_converter/util/bottom_output_container.dart';

class LengthConverter extends StatefulWidget {
  LengthConverter({Key? key}) : super(key: key);

  @override
  State<LengthConverter> createState() => _LengthConverterState();
}

class _LengthConverterState extends State<LengthConverter> {
  String topSelected = "Kilometer";
  String bottomSelected = "Kilometer";
  var bottomOutput = " ";
  String topInput = " ";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Length Converter"),
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
                            child: Text("Kilometer"),
                            value: 'Kilometer',
                          ),
                          DropdownMenuItem(
                            child: Text("Meter"),
                            value: 'Meter',
                          ),
                          DropdownMenuItem(
                            child: Text("Centimeter"),
                            value: 'Centimeter',
                          ),
                          DropdownMenuItem(
                            child: Text("Foot"),
                            value: 'Foot',
                          ),
                          DropdownMenuItem(
                            child: Text("Inch"),
                            value: 'Inch',
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

                            LengthConversion ab = new LengthConversion(
                                topInput, topSelected, bottomSelected);
                            bottomOutput = ab.getConversion();
                          });
                        },
                      )),
                  Container(
                    margin: EdgeInsets.all(12),
                    child: DropdownButton<String>(
                        dropdownColor: Colors.grey,
                        value: bottomSelected,
                        items: const [
                          DropdownMenuItem(
                            child: Text("Kilometer"),
                            value: 'Kilometer',
                          ),
                          DropdownMenuItem(
                            child: Text("Meter"),
                            value: 'Meter',
                          ),
                          DropdownMenuItem(
                            child: Text("Centimeter"),
                            value: 'Centimeter',
                          ),
                          DropdownMenuItem(
                            child: Text("Foot"),
                            value: 'Foot',
                          ),
                          DropdownMenuItem(
                            child: Text("Inch"),
                            value: 'Inch',
                          ),
                        ],
                        onChanged: (value) {
                          print(value);
                          setState(() {
                            bottomSelected = value!;

                            if (topInput != " " && bottomOutput != " ") {
                              LengthConversion ab = LengthConversion(
                                  topInput, topSelected, bottomSelected);
                              bottomOutput = ab.getConversion();
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
