import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quatity_converter/util/bottom_output_container.dart';

import 'energy_conversion.dart';

class EnergyConverter extends StatefulWidget {
  const EnergyConverter({Key? key}) : super(key: key);

  @override
  State<EnergyConverter> createState() => _EnergyConverter();
}

class _EnergyConverter extends State<EnergyConverter> {
  String topSelected = "Joule";
  String bottomSelected = "Joule";
  var bottomOutput = " ";
  String topInput = " ";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Energy Converter"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Expanded(
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
                                  value: 'Joule',
                                  child: Text("Joule"),
                                ),
                                DropdownMenuItem(
                                  value: 'Gram calorie',
                                  child: Text("Gram calorie"),
                                ),
                                DropdownMenuItem(
                                  value: 'Watt hour',
                                  child: Text("Watt hour"),
                                ),
                                DropdownMenuItem(
                                  value: 'Kilowatt hour',
                                  child: Text("Kilowatt hour"),
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
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                            keyboardType: TextInputType.number,
                            onChanged: (text) {
                              setState(() {
                                topInput = text;
                              });
                            },
                          )),
                      Container(
                        child: DropdownButton<String>(
                            value: bottomSelected,
                            items: const [
                              DropdownMenuItem(
                                value: 'Joule',
                                child: Text("Joule"),
                              ),
                              DropdownMenuItem(
                                value: 'Gram calorie',
                                child: Text("Gram calorie"),
                              ),
                              DropdownMenuItem(
                                value: 'Watt hour',
                                child: Text("Watt hour"),
                              ),
                              DropdownMenuItem(
                                value: 'Kilowatt hour',
                                child: Text("Kilowatt hour"),
                              ),
                            ],
                            onChanged: (value) {
                              setState(() {
                                bottomSelected = value!;
                                if (topInput != " " && bottomOutput != " ") {
                                  EnergyConversion time = new EnergyConversion(
                                      (topInput), topSelected, bottomSelected);
                                  bottomOutput = time.getConversion();
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
      ),
    );
  }
}
