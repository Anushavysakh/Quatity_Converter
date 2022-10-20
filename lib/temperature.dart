import 'package:flutter/material.dart';
import 'package:quatity_converter/temperature_conversion.dart';
import 'package:quatity_converter/util/bottom_output_container.dart';

class TemperatureConverter extends StatefulWidget {
  TemperatureConverter({Key? key}) : super(key: key);

  @override
  State<TemperatureConverter> createState() => _TemperatureConverterState();
}

class _TemperatureConverterState extends State<TemperatureConverter> {
  String topSelected = 'Celsius';

  String bottomSelected = 'Celsius';
  var bottomOutput = " ";
  var topInput = " ";

  @override
  Widget build(BuildContext context) {
    print("Inside build");
    return Scaffold(
      appBar: AppBar(
        title: const Text("Temperature Converter"),
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
                                child: Text("Celsius"),
                                value: 'Celsius',
                              ),
                              DropdownMenuItem(
                                child: Text("Farenheit"),
                                value: 'Farenheit',
                              ),
                              DropdownMenuItem(
                                child: Text("Kelvin"),
                                value: 'Kelvin',
                              ),
                            ],
                            onChanged: (value) {
                              setState(() {
                                topSelected = value!;
                              });
                            })),
                    Container(
                        color: Colors.grey,
                        child: TextField(
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                          textAlign: TextAlign.center,
                          keyboardType: TextInputType.number,
                          onChanged: (text) {
                            topInput = text;
                            setState(() {
                              topInput = text;
                              TemperatureConversion temprature =
                                  new TemperatureConversion(
                                      topSelected, bottomSelected, topInput);
                              bottomOutput = temprature.getConversion();
                            });
                            print(text);
                          },
                        )),
                    Container(
                        child: DropdownButton<String>(
                            value: bottomSelected,
                            items: const [
                              DropdownMenuItem(
                                child: Text("Celsius"),
                                value: 'Celsius',
                              ),
                              DropdownMenuItem(
                                child: Text("Farenheit"),
                                value: 'Farenheit',
                              ),
                              DropdownMenuItem(
                                child: Text("Kelvin"),
                                value: 'Kelvin',
                              ),
                            ],
                            onChanged: (value) {
                              bottomSelected = value!;

                              setState(() {
                                bottomSelected = value!;

                                if (topInput != " " && bottomOutput != " ") {
                                  TemperatureConversion temperature =
                                      TemperatureConversion(topInput,
                                          topSelected, bottomSelected);
                                  bottomOutput = temperature.getConversion();
                                }
                              });
                            })),
                    BottomOutputContainer(bottomOutput: bottomOutput)
                  ]),
            )
          ],
        ),
      ),
    );
  }
}
