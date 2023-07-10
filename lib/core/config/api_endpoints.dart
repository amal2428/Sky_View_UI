const String _apiKey = '6b4419fd8309edc0c177f8f93073510c';

String? currentLatitude;
String? currentLongitude;

String pathUrl =
    "https://api.openweathermap.org/data/2.5/weather?lat=$currentLatitude&lon=$currentLongitude&appid=$_apiKey&units=metric";
