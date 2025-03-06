import 'package:flutter/material.dart';
import 'package:flutterterm2/repository/mock/mock_ride_preferences_repository.dart';
import 'package:flutterterm2/repository/mock_location_respoitory.dart';
import 'package:logger/logger.dart';
import 'screens/ride_pref/ride_pref_screen.dart';
import 'service/locations_service.dart';
import 'service/ride_prefs_service.dart';
import 'theme/theme.dart';


void main() {

  var logger = Logger();
  // 1 - Initialize the services
  RidePrefService.initialize(MockRidePreferencesRepository());
  logger.d(
      'Available ride preferences: ${RidePrefService.instance.getPastPreferences()}');

  LocationsService.initialize(MockLocationsRepository());
  logger.d('Available locations: ${LocationsService.instance.getLocations()}');

  // 2- Run the UI
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: appTheme,
      home: Scaffold(body: RidePrefScreen()),
    );
  }
}