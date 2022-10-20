import 'package:flutter/material.dart';
import 'package:quatity_converter/time_conversion.dart';
import 'package:quatity_converter/util/bottom_output_container.dart';

class TimeConverter extends StatefulWidget {
  const TimeConverter({Key? key}) : super(key: key);

  @override
  State<TimeConverter> createState() => _TimeConverterState();
}

class _TimeConverterState extends State<TimeConverter> {
  String topSelected = "Second";
  String bottomSelected = "Second";
  var bottomOutput = " ";
  String topInput = " ";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Time Converter"),
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
                                  value: 'Second',
                                  child: Text("Second"),
                                ),
                                DropdownMenuItem(
                                  value: 'Minute',
                                  child: Text("Minute"),
                                ),
                                DropdownMenuItem(
                                  value: 'Hour',
                                  child: Text("Hour"),
                                ),
                                DropdownMenuItem(
                                  value: 'Day',
                                  child: Text("Day"),
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
                                value: 'Second',
                                child: Text("Second"),
                              ),
                              DropdownMenuItem(
                                value: 'Minute',
                                child: Text("Minute"),
                              ),
                              DropdownMenuItem(
                                value: 'Hour',
                                child: Text("Hour"),
                              ),
                              DropdownMenuItem(
                                value: 'Day',
                                child: Text("Day"),
                              ),
                            ],
                            onChanged: (value) {
                              setState(() {
                                bottomSelected = value!;
                                if (topInput != " " && bottomOutput != " ") {
                                  TimeConversion time = new TimeConversion(
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
