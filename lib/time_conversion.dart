class TimeConversion {

  final String topValue;
  final String topSelected;
  final String bottomSelected;

  TimeConversion(this.topValue, this.topSelected, this.bottomSelected);

  getConversion() {
    if (topSelected == "Second") {
      if (bottomSelected == "Second") {
        return topValue;
      } else if (bottomSelected == "Minute") {
        double topInput = double.parse(topValue);
        double result = topInput / 60;
        return result.toString();
      } else if (bottomSelected == "Hour") {
        double topInput = double.parse(topValue);
        double result = topInput / 3600;
        return result.toString();
      } else if (bottomSelected == "Day") {
        double topInput = double.parse(topValue);
        double result = topInput / 86400;
        return result.toString();
      }
    }
    if (topSelected == "Minute") {
      if (bottomSelected == "Minute") {
        return topValue;
      } else if (bottomSelected == "Second") {
        double topInput = double.parse(topValue);
        double result = topInput * 60;
        return result.toString();
      } else if (bottomSelected == "Hour") {
        double topInput = double.parse(topValue);
        double result = topInput / 60;
        return result.toString();
      } else {
        double topInput = double.parse(topValue);
        double result = topInput / 1440;
        return result.toString();
      }
    }
    if (topSelected == "Hour") {
      if (bottomSelected == "Hour") {
        return topValue;
      } else if (bottomSelected == "Minute") {
        double topInput = double.parse(topValue);
        double result = topInput * 60;
        return result.toString();
      } else if (bottomSelected == "Second") {
        double topInput = double.parse(topValue);
        double result = topInput * 3600;
        return result.toString();
      } else  {
        double topInput = double.parse(topValue);
        double result = topInput / 24;
        return result.toString();
      }
    }
    if (topSelected == "Day") {
      if (bottomSelected == "Day") {
        return topValue;
      } else if (bottomSelected == "Minute") {
        double topInput = double.parse(topValue);
        double result = topInput * 1440;
        return result.toString();
      } else if (bottomSelected == "Hour") {
        double topInput = double.parse(topValue);
        double result = topInput * 24;
        return result.toString();
      } else  {
        double topInput = double.parse(topValue);
        double result = topInput * 86400;
        return result.toString();
      }
    }
  }
}
