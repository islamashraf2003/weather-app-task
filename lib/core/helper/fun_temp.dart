int calcTemp(double num) {
  double result = num - 273.15;
  return result.toInt();
}

int calcTime(int num) {
  var dateTime = DateTime.fromMillisecondsSinceEpoch(num * 1000);
  return dateTime.hour;
}

//de fun convert the first letter to upperCase
extension StringExtension on String {
  String capitalize() {
    return "${this[0].toUpperCase()}${this.substring(1)}";
  }
}

String categorizeTemperature(int temperature) {
  if (temperature > 25) {
    return 'Hot';
  } else if (temperature >= 15 && temperature <= 25) {
    return 'Medium';
  } else {
    return 'Low';
  }
}
