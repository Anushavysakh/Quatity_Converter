import 'package:flutter/cupertino.dart';

class LengthConversion  {

   final String topValue;
   final String topSelected;
   final String bottomSelected;

  LengthConversion(this.topValue, this.topSelected, this.bottomSelected);

  getConversion() {

    if (topSelected == "Kilometer") {
      if(bottomSelected == "Kilometer"){
        return topValue;
      } else if (bottomSelected == "Centimeter") {
        double topInput = double.parse(topValue);
        double result = topInput * 100000;
        return result.toString();
      } else if (bottomSelected == "Meter") {
        double topInput = double.parse(topValue);
        double result = topInput * 1000;
        return result.toString();
      } else if (bottomSelected == "Foot") {
        double topInput = double.parse(topValue);
        double result = topInput * 3281;
        return result.toString();
      } else {
        double topInput = double.parse(topValue);
        double result = topInput * 39370;
        return result.toString();
      }
    }
    if (topSelected == "Centimeter") {
      if(bottomSelected == "Centimeter"){
        return topValue;
      } else if (bottomSelected == "Kilometer") {
        double topInput = double.parse(topValue);
        double result = topInput * 100000;
        return result.toString();
      } else if (bottomSelected == "Meter") {
        double topInput = double.parse(topValue);
        double result = topInput / 100;
        return result.toString();
      } else if (bottomSelected == "Foot") {
        double topInput = double.parse(topValue);
        double result = topInput / 30.48;
        return result.toString();
      } else {
        double topInput = double.parse(topValue);
        double result = topInput / 2.54;
        return result.toString();
      }

    }
    if (topSelected == "Meter") {
      if(bottomSelected == "Meter"){
        return topValue;
      } else if (bottomSelected == "Kilometer") {
        double topInput = double.parse(topValue);
        double result = topInput /1000;
        return result.toString();
      } else if (bottomSelected == "Centimeter") {
        double topInput = double.parse(topValue);
        double result = topInput * 100;
        return result.toString();
      } else if (bottomSelected == "Foot") {
        double topInput = double.parse(topValue);
        double result = topInput * 3.281;
        return result.toString();
      } else {
        double topInput = double.parse(topValue);
        double result = topInput * 39.37;
        return result.toString();
      }
    }
    if (topSelected == "Foot") {
      if(bottomSelected == "Foot"){
        return topValue;
      } else if (bottomSelected == "Kilometer") {
        double topInput = double.parse(topValue);
        double result = topInput / 3281;
        return result.toString();
      } else if (bottomSelected == "Centimeter") {
        double topInput = double.parse(topValue);
        double result = topInput * 30.48;
        return result.toString();
      } else if (bottomSelected == "Meter") {
        double topInput = double.parse(topValue);
        double result = topInput / 3.281;
        return result.toString();
      } else {
        double topInput = double.parse(topValue);
        double result = topInput * 12;
        return result.toString();
      }
    }

    if (topSelected == "Inch") {
      if(bottomSelected == "Inch"){
        return topValue;
      } else if (bottomSelected == "Kilometer") {
        double topInput = double.parse(topValue);
        double result = topInput / 39370;
        return result.toString();
      } else if (bottomSelected == "Centimeter") {
        double topInput = double.parse(topValue);
        double result = topInput * 2.54;
        return result.toString();
      } else if (bottomSelected == "Meter") {
        double topInput = double.parse(topValue);
        double result = topInput / 39.37;
        return result.toString();
      } else {
        double topInput = double.parse(topValue);
        double result = topInput / 12;
        return result.toString();
      }
    }

  }

}
