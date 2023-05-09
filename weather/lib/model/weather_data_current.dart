
class Current {
  int? dt;
  int? sunrise;
  int? sunset;
  double? temp;
  double? feelsLike;
  int? pressure;
  int? humidity;
  double? dewPoint;
  int? uvi;
  int? clouds;
  int? visibility;
  double? windSpeed;
  int? windDeg;
  List<Weather>? weather;

  Current({
    this.dt,
    this.sunrise,
    this.sunset,
    this.temp,
    this.feelsLike,
    this.pressure,
    this.humidity,
    this.dewPoint,
    this.uvi,
    this.clouds,
    this.visibility,
    this.windSpeed,
    this.windDeg,
    this.weather,
  });

  factory Current.fromJson(Map<String, dynamic> json) => Current(
        dt: json['dt'] as int?,
        sunrise: json['sunrise'] as int?,
        sunset: json['sunset'] as int?,
        temp: (json['temp'] as num?)?.toDouble(),
        feelsLike: (json['feels_like'] as num?)?.toDouble(),
        pressure: json['pressure'] as int?,
        humidity: json['humidity'] as int?,
        dewPoint: (json['dew_point'] as num?)?.toDouble(),
        uvi: json['uvi'] as int?,
        clouds: json['clouds'] as int?,
        visibility: json['visibility'] as int?,
        windSpeed: (json['wind_speed'] as num?)?.toDouble(),
        windDeg: json['wind_deg'] as int?,
        weather: (json['weather'] as List<dynamic>?)
            ?.map((e) => Weather.fromJson(e as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toJson() => {
        'dt': dt,
        'sunrise': sunrise,
        'sunset': sunset,
        'temp': temp,
        'feels_like': feelsLike,
        'pressure': pressure,
        'humidity': humidity,
        'dew_point': dewPoint,
        'uvi': uvi,
        'clouds': clouds,
        'visibility': visibility,
        'wind_speed': windSpeed,
        'wind_deg': windDeg,
        'weather': weather?.map((e) => e.toJson()).toList(),
      };
}


class Weather {
  double? lat;
  double? lon;
  String? timezone;
  int? timezoneOffset;
  Current? current;
  List<Hourly>? hourly;
  List<Daily>? daily;

  Weather({
    this.lat,
    this.lon,
    this.timezone,
    this.timezoneOffset,
    this.current,
    this.hourly,
    this.daily,
  });

  factory Weather.fromJson(Map<String, dynamic> json) => Weather(
        lat: (json['lat'] as num?)?.toDouble(),
        lon: (json['lon'] as num?)?.toDouble(),
        timezone: json['timezone'] as String?,
        timezoneOffset: json['timezone_offset'] as int?,
        current: json['current'] == null
            ? null
            : Current.fromJson(json['current'] as Map<String, dynamic>),
        hourly: (json['hourly'] as List<dynamic>?)
            ?.map((e) => Hourly.fromJson(e as Map<String, dynamic>))
            .toList(),
        daily: (json['daily'] as List<dynamic>?)
            ?.map((e) => Daily.fromJson(e as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toJson() => {
        'lat': lat,
        'lon': lon,
        'timezone': timezone,
        'timezone_offset': timezoneOffset,
        'current': current?.toJson(),
        'hourly': hourly?.map((e) => e.toJson()).toList(),
        'daily': daily?.map((e) => e.toJson()).toList(),
      };
}



class Hourly {
  int? dt;
  double? temp;
  double? feelsLike;
  int? pressure;
  int? humidity;
  double? dewPoint;
  double? uvi;
  int? clouds;
  int? visibility;
  double? windSpeed;
  int? windDeg;
  double? windGust;
  List<Weather>? weather;
  double? pop;
  Rain? rain;

  Hourly({
    this.dt,
    this.temp,
    this.feelsLike,
    this.pressure,
    this.humidity,
    this.dewPoint,
    this.uvi,
    this.clouds,
    this.visibility,
    this.windSpeed,
    this.windDeg,
    this.windGust,
    this.weather,
    this.pop,
    this.rain,
  });

  factory Hourly.fromJson(Map<String, dynamic> json) => Hourly(
        dt: json['dt'] as int?,
        temp: (json['temp'] as num?)?.toDouble(),
        feelsLike: (json['feels_like'] as num?)?.toDouble(),
        pressure: json['pressure'] as int?,
        humidity: json['humidity'] as int?,
        dewPoint: (json['dew_point'] as num?)?.toDouble(),
        uvi: (json['uvi'] as num?)?.toDouble(),
        clouds: json['clouds'] as int?,
        visibility: json['visibility'] as int?,
        windSpeed: (json['wind_speed'] as num?)?.toDouble(),
        windDeg: json['wind_deg'] as int?,
        windGust: (json['wind_gust'] as num?)?.toDouble(),
        weather: (json['weather'] as List<dynamic>?)
            ?.map((e) => Weather.fromJson(e as Map<String, dynamic>))
            .toList(),
        pop: (json['pop'] as num?)?.toDouble(),
        rain: json['rain'] == null
            ? null
            : Rain.fromJson(json['rain'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toJson() => {
        'dt': dt,
        'temp': temp,
        'feels_like': feelsLike,
        'pressure': pressure,
        'humidity': humidity,
        'dew_point': dewPoint,
        'uvi': uvi,
        'clouds': clouds,
        'visibility': visibility,
        'wind_speed': windSpeed,
        'wind_deg': windDeg,
        'wind_gust': windGust,
        'weather': weather?.map((e) => e.toJson()).toList(),
        'pop': pop,
        'rain': rain?.toJson(),
      };
}
