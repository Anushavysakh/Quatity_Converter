import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quatity_converter/pressure_conversion.dart';
import 'package:quatity_converter/util/bottom_output_container.dart';

class PressureConverter extends StatefulWidget {
  const PressureConverter({Key? key}) : super(key: key);

  @override
  State<PressureConverter> createState() => _PressureConverterState();
}

class _PressureConverterState extends State<PressureConverter> {
  String topSelected = "Bar";
  String bottomSelected = "Bar";
  var bottomOutput = " ";
  String topInput = " ";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pressure Converter"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            Center(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Container(
                        child: DropdownButton<String>(
                            value: topSelected,
                            items: [
                              DropdownMenuItem(
                                value: 'Bar',
                                child: Text("Bar"),
                              ),
                              DropdownMenuItem(
                                value: 'Pascal',
                                child: Text("Pascal"),
                              ),
                              DropdownMenuItem(
                                value: 'Pound per square inch',
                                child: Text("Pound per square inch"),
                              ),
                              DropdownMenuItem(
                                value: 'Standard atmosphere',
                                child: Text("Standard atmosphere"),
                              ),
                            ],
                            onChanged: (value) {
                              setState(() {
                                topSelected = value!;
                              });
                            })),
                    Container(
                        margin: EdgeInsets.all(12),
                        color: Colors.grey,
                        child: TextField(
                          textAlign: TextAlign.center,
                          autofocus: true,
                          style: const TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                          keyboardType: TextInputType.number,
                          onChanged: (text) {
                            setState(() {
                              topInput = text;
                              PressureConversion ab = new PressureConversion(
                                  topInput, topSelected, bottomSelected);
                              bottomOutput = ab.getConversion();
                            });
                          },
                        )),
                    Container(
                      child: DropdownButton<String>(
                          value: bottomSelected,
                          items: const [
                            DropdownMenuItem(
                              value: 'Bar',
                              child: Text("Bar"),
                            ),
                            DropdownMenuItem(
                              value: 'Pascal',
                              child: Text("Pascal"),
                            ),
                            DropdownMenuItem(
                              value: 'Pound per square inch',
                              child: Text("Pound per square inch"),
                            ),
                            DropdownMenuItem(
                              value: 'Standard atmosphere',
                              child: Text("Standard atmosphere"),
                            ),
                          ],
                          onChanged: (value) {
                            setState(() {
                              bottomSelected = value!;

                              if (topInput != " " && bottomOutput != " ") {
                                PressureConversion pressure =
                                    PressureConversion(
                                        topInput, topSelected, bottomSelected);
                                bottomOutput = pressure.getConversion();
                              }
                            });
                          }),
                    ),
                    BottomOutputContainer(bottomOutput: bottomOutput)
                  ]),
            )
          ],
        ),
      ),
    );
  }
}
