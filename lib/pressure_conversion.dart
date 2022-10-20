
class PressureConversion {

  final String topValue;
  final String topSelected;
  final String bottomSelected;

  PressureConversion(this.topValue, this.topSelected, this.bottomSelected);

  getConversion() {
    if (topSelected == "Bar") {
      if (bottomSelected == "Bar") {
        return topValue;
      } else if (bottomSelected == "Pascal") {
        double topInput = double.parse(topValue);
        double result = topInput * 1.013;
        return result.toString();
      } else if (bottomSelected == "Pound per square inch") {
        double topInput = double.parse(topValue);
        double result = topInput * 1.013;
        return result.toString();
      } else if (bottomSelected == "Standard atmosphere") {
        double topInput = double.parse(topValue);
        double result = topInput /  3.6e+6;
        return result.toString();
      }
    }
    if (topSelected == "Pascal") {
      if (bottomSelected == "Pascal") {
        return topValue;
      } else if (bottomSelected == "Bar") {
        double topInput = double.parse(topValue);
        double result = topInput / 100000;
        return result.toString();
      } else if (bottomSelected == "Pound per square inch") {
        double topInput = double.parse(topValue);
        double result = topInput / 6895;
        return result.toString();
      } else {
        double topInput = double.parse(topValue);
        double result = topInput / 101300;
        return result.toString();
      }
    }
    if (topSelected == "Pound per square inch") {
      if (bottomSelected == "Pound per square inch") {
        return topValue;
      } else if (bottomSelected == "Bar") {
        double topInput = double.parse(topValue);
        double result = topInput / 14.504;
        return result.toString();
      } else if (bottomSelected == "Pascal") {
        double topInput = double.parse(topValue);
        double result = topInput * 6895;
        return result.toString();
      } else  {
        double topInput = double.parse(topValue);
        double result = topInput / 14.696;
        return result.toString();
      }
    }
    if (topSelected == "Standard atmosphere") {
      if (bottomSelected == "Standard atmosphere") {
        return topValue;
      } else if (bottomSelected == "Bar") {
        double topInput = double.parse(topValue);
        double result = topInput * 1.013;
        return result.toString();
      } else if (bottomSelected == "Pascal") {
        double topInput = double.parse(topValue);
        double result = topInput * 101300;
        return result.toString();
      } else  {
        double topInput = double.parse(topValue);
        double result = topInput * 14.696;
        return result.toString();
      }
    }
  }
}



