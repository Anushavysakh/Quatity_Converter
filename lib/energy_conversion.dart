class EnergyConversion {

  final String topValue;
  final String topSelected;
  final String bottomSelected;

  EnergyConversion(this.topValue, this.topSelected, this.bottomSelected);

  getConversion() {
    if (topSelected == "Joule") {
      if (bottomSelected == "Joule") {
        return topValue;
      } else if (bottomSelected == "Gram calorie") {
        double topInput = double.parse(topValue);
        double result = topInput / 4.184;
        return result.toString();
      } else if (bottomSelected == "Watt hour") {
        double topInput = double.parse(topValue);
        double result = topInput / 3600;
        return result.toString();
      } else if (bottomSelected == "Kilowatt hour") {
        double topInput = double.parse(topValue);
        double result = topInput /  3.6e+6;
        return result.toString();
      }
    }
    if (topSelected == "Gram calorie") {
      if (bottomSelected == "Gram calorie") {
        return topValue;
      } else if (bottomSelected == "Joule") {
        double topInput = double.parse(topValue);
        double result = topInput * 4.184;
        return result.toString();
      } else if (bottomSelected == "Watt hour") {
        double topInput = double.parse(topValue);
        double result = topInput / 860.4;
        return result.toString();
      } else {
        double topInput = double.parse(topValue);
        double result = topInput / 860400;
        return result.toString();
      }
    }
    if (topSelected == "Watt hour") {
      if (bottomSelected == "Watt hour") {
        return topValue;
      } else if (bottomSelected == "Joule") {
        double topInput = double.parse(topValue);
        double result = topInput * 3600;
        return result.toString();
      } else if (bottomSelected == "Gram calorie") {
        double topInput = double.parse(topValue);
        double result = topInput * 860.4;
        return result.toString();
      } else  {
        double topInput = double.parse(topValue);
        double result = topInput / 1000;
        return result.toString();
      }
    }
    if (topSelected == "Kilowatt hour") {
      if (bottomSelected == "Kilowatt hour") {
        return topValue;
      } else if (bottomSelected == "Joule") {
        double topInput = double.parse(topValue);
        double result = topInput * 3.6e+6;
         result.toString();
        return result.toStringAsFixed(2);

      } else if (bottomSelected == "Gram calorie") {
        double topInput = double.parse(topValue);
        double result = topInput * 860400;
         result.toString();
        return result.toStringAsFixed(2);

      } else  {
        double topInput = double.parse(topValue);
        double result = topInput * 1000;
         result.toString();
         return result.toStringAsFixed(2);

      }
    }
  }
}

