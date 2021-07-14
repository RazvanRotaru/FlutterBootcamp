import 'package:weather_app/models/location.dart';

class GetLocationAction {}

class GetLocationResponse {}

class GetLocationSuccessful extends GetLocationResponse {
  GetLocationSuccessful(this.location);

  final Location location;

  @override
  String toString() {
    return 'GetLocationSuccessful{location: $location}';
  }
}

class GetLocationError extends GetLocationResponse {
  GetLocationError(this.error);

  final Object error;

  @override
  String toString() {
    return 'GetLocationError{error: $error}';
  }
}
