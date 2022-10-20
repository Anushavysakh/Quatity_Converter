import 'package:flutter/material.dart';
import 'package:quatity_converter/mass.dart';
import 'package:quatity_converter/pressure.dart';
import 'package:quatity_converter/speed.dart';
import 'package:quatity_converter/temperature.dart';
import 'package:quatity_converter/time.dart';
import 'package:quatity_converter/length.dart';

const List<String> list = <String>[
  'Length',
  'Temperature',
  'Time',
  'Pressure',
  'Speed',
  'Mass',
  'Pressure'
];
void main() {
  runApp(const MaterialApp(
    home: QuantityConverter(),
  ));
}

class QuantityConverter extends StatefulWidget {
  const QuantityConverter({Key? key}) : super(key: key);

  @override
  State<QuantityConverter> createState() => _QuantityConverterState();
}

class _QuantityConverterState extends State<QuantityConverter> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Unit Converter"),
        backgroundColor: Colors.cyan,
      ),
      body: InkWell(
        child: Container(
          padding: EdgeInsets.all(7),
          decoration: BoxDecoration(
            color: Colors.cyan.shade100,

          ),
          child: ListView.builder(scrollDirection: Axis.vertical,
            itemCount: list.length,
            itemBuilder: (context, index) {
              return Card(elevation: 7,
                child: ListTile(tileColor: Colors.lightBlue.shade300,minVerticalPadding: 20,trailing:Icon(Icons.arrow_forward),
                    title: Text(list[index],style: TextStyle(fontSize: 18),),
                    onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => unitClass[index]),
                        )
                ),
              );
            }
          ),
        ),
      ),
    );
  }
}

List unitClass = [
  LengthConverter(),
  TemperatureConverter(),
  TimeConverter(),
  PressureConverter(),
  SpeedConverter(),
  MassConverter(),
  PressureConverter(),
];

