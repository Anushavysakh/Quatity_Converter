import 'package:flutter/material.dart';

class TemperatureConversion {
  late String topSelected;
  late String bottomSelected;
  late String topInput;

  @override
  String toString() {
    return 'TemperatureConversion{topSelected: $topSelected, bottomSelected: $bottomSelected, topInput: $topInput}';
  }

  TemperatureConversion(this.topSelected, this.bottomSelected, this.topInput);

  getConversion() {
    if (topSelected == "Celsius") {
      if (bottomSelected == "Celsius") {
        return topInput;
      }
      if (bottomSelected == "Farenheit") {
        double celcius = double.parse(topInput);
        double result = (celcius * 9 / 5) + 32;
        return result.toStringAsFixed(2);
      } else if (bottomSelected == "Kelvin") {
        double celcius = double.parse(topInput);
        double result = celcius + 273.15;
        return result.toStringAsFixed(2);
      }
    }
    if (topSelected == "Farenheit") {
      if (bottomSelected == "Farenheit") {
        return topInput;
      }
      if (bottomSelected == "Celsius") {
        double farenheit = double.parse(topInput);
        double result = (farenheit - 32) * 5 / 9;
        return result.toStringAsFixed(2);
      } else if (bottomSelected == "Kelvin") {
        double farenheit = double.parse(topInput);
        double result = ((farenheit - 32) * 5 / 9) + 273.15;
        return result.toStringAsFixed(2);
      }
    }
    if (topSelected == "Kelvin") {
      if (bottomSelected == "Kelvin") {
        return topInput;
      }
      if (bottomSelected == "Celsius") {
        double kelvin = double.parse(topInput);
        double result = kelvin - 273.15;
        return result.toStringAsFixed(2);
      } else if (bottomSelected == "Farenheit") {
        double kelvin = double.parse(topInput);
        double result = ((kelvin - 273.15) * 9 / 5) + 32;
        return result.toStringAsFixed(2);
      }
    }
  }
}
