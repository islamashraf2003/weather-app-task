String getImage(String description) {
  if ("thunderstorm".contains(description) || "thunder".contains(description)) {
    return "assets/images/storm.png";
  } else if ("Clear".contains(description) || "Sunny".contains(description)) {
    return "assets/images/clear.png";
  } else if ("Light cloud".contains(description) ||
      "Heavy cloud".contains(description) ||
      "Partly cloudy".contains(description)) {
    return "assets/images/Sleet.png";
  } else if ("Sleet".contains(description) ||
      "Snow".contains(description) ||
      "Hail".contains(description)) {
    return "assets/images/Heavy cloud.png";
  } else if ("Light rain".contains(description) ||
      "Heavy rain".contains(description) ||
      "Showers".contains(description) ||
      "Patchy rain possible".contains(description) ||
      "Rain".contains(description)) {
    return "assets/images/Light rain.png";
  } else if ("Sunny".contains(description)) {
    return "assets/images/sun.png";
  } else {
    return "assets/images/Cloudy.png";
  }
}
