
class SpeedConversion {
  final String topValue;
  final String topSelected;
  final String bottomSelected;

SpeedConversion(this.topValue, this.topSelected, this.bottomSelected);

  getConversion() {

    if (topSelected == "Meter per second") {
      if(bottomSelected == "Meter per second"){
        return topValue;
      } else if (bottomSelected == "Kilometer per hour") {
        double topInput = double.parse(topValue);
        double result = topInput * 3.6;
        return result.toString();
      } else if (bottomSelected == "Foot per second") {
        double topInput = double.parse(topValue);
        double result = topInput * 3.281;
        return result.toString();
      } else if (bottomSelected == "Miles per hour") {
        double topInput = double.parse(topValue);
        double result = topInput * 2.237;
        return result.toString();
      } else {
        double topInput = double.parse(topValue);
        double result = topInput * 1.944;
        return result.toString();
      }
    }
    if (topSelected == "Foot per second") {
      if(bottomSelected == "Foot per second"){
        return topValue;
      } else if (bottomSelected == "Meter per second") {
        double topInput = double.parse(topValue);
        double result = topInput * 2.237;
        return result.toString();
      } else if (bottomSelected == "Kilometer per hour") {
        double topInput = double.parse(topValue);
        double result = topInput *  1.097;
        return result.toString();
      } else if (bottomSelected == "Miles per hour") {
        double topInput = double.parse(topValue);
        double result = topInput / 1.467;
        return result.toString();
      } else {
        double topInput = double.parse(topValue);
        double result = topInput / 1.688;
        return result.toString();
      }

    }
    if (topSelected == "Kilometer per hour") {
      if(bottomSelected == "Kilometer per hour"){
        return topValue;
      } else if (bottomSelected == "Meter per second") {
        double topInput = double.parse(topValue);
        double result = topInput /3.6;
        return result.toString();
      } else if (bottomSelected == "Foot per second") {
        double topInput = double.parse(topValue);
        double result = topInput / 1.097;
        return result.toString();
      } else if (bottomSelected == "Miles per hour ") {
        double topInput = double.parse(topValue);
        double result = topInput / 1.609;
        return result.toString();
      } else {
        double topInput = double.parse(topValue);
        double result = topInput / 1.852;
        return result.toString();
      }
    }
    if (topSelected == "Miles per hour") {
      if(bottomSelected == "Miles per hour"){
        return topValue;
      } else if (bottomSelected == "Meter per second") {
        double topInput = double.parse(topValue);
        double result = topInput / 2.237;
        return result.toString();
      } else if (bottomSelected == "Foot per second") {
        double topInput = double.parse(topValue);
        double result = topInput * 1.467;
        return result.toString();
      } else if (bottomSelected == "Kilometer per hour") {
        double topInput = double.parse(topValue);
        double result = topInput * 1.609;
        return result.toString();
      } else {
        double topInput = double.parse(topValue);
        double result = topInput / 1.151;
        return result.toString();
      }
    }

    if (topSelected == "Knot") {
      if(bottomSelected == "Knot"){
        return topValue;
      } else if (bottomSelected == "Meter per second") {
        double topInput = double.parse(topValue);
        double result = topInput / 1.944;
        return result.toString();
      } else if (bottomSelected == "Foot per second") {
        double topInput = double.parse(topValue);
        double result = topInput * 1.688;
        return result.toString();
      } else if (bottomSelected == "Kilometer per hour") {
        double topInput = double.parse(topValue);
        double result = topInput * 1.852;
        return result.toString();
      } else {
        double topInput = double.parse(topValue);
        double result = topInput * 1.151;
        return result.toString();
      }
    }

  }

}

