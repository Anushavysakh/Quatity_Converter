class MassConversion {

  final String topValue;
  final String topSelected;
  final String bottomSelected;

  MassConversion(this.topValue, this.topSelected, this.bottomSelected);

  getConversion() {
    if (topSelected == "Kilogram") {
      if (bottomSelected == "Kilogram") {
        return topValue;
      } else if (bottomSelected == "Pound") {
        double topInput = double.parse(topValue);
        double result = topInput * 2.205;
        return result.toString();
      } else if (bottomSelected == "Ounce") {
        double topInput = double.parse(topValue);
        double result = topInput * 35.274;
        return result.toString();
      } else {
        double topInput = double.parse(topValue);
        double result = topInput * 1000;
        return result.toString();
      }
    }
    if (topSelected == "Pound") {
      if (bottomSelected == "Pound") {
        return topValue;
      } else if (bottomSelected == "Kilogram") {
        double topInput = double.parse(topValue);
        double result = topInput / 2.205;
        return result.toString();
      } else if (bottomSelected == "Ounce") {
        double topInput = double.parse(topValue);
        double result = topInput * 16;
        return result.toString();
      } else {
        double topInput = double.parse(topValue);
        double result = topInput * 453.6;
        return result.toString();
      }
    }
    if (topSelected == "Ounce") {
      if (bottomSelected == "Ounce") {
        return topValue;
      } else if (bottomSelected == "Kilogram") {
        double topInput = double.parse(topValue);
        double result = topInput / 35.274;
        return result.toString();
      } else if (bottomSelected == "Pound") {
        double topInput = double.parse(topValue);
        double result = topInput / 16;
        return result.toString();
      } else {
        double topInput = double.parse(topValue);
        double result = topInput * 28.35;
        return result.toString();
      }
    }
    if (topSelected == "Gram") {
      if (bottomSelected == "Gram") {
        return topValue;
      } else if (bottomSelected == "Kilogram") {
        double topInput = double.parse(topValue);
        double result = topInput * 1000;
        return result.toString();
      } else if (bottomSelected == "Pound") {
        double topInput = double.parse(topValue);
        double result = topInput / 453.6;
        return result.toString();
      } else {
        double topInput = double.parse(topValue);
        double result = topInput * 28.35;
        return result.toString();
      }
    }
  }

}