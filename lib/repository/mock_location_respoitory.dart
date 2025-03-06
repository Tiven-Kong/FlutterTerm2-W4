// mock_location_repository.dart
import 'package:flutter/material.dart';
import '../model/ride/locations.dart';
import 'location_respository.dart';

class MockLocationsRepository implements LocationsRepository {
  @override
  List<Location> getLocations() {
    return [
      Location(name: "Phnom Penh", country: Country.cambodia),
      Location(name: "Siem Reap", country: Country.cambodia),
      Location(name: "Battambang", country: Country.cambodia),
      Location(name: "Sihanoukville", country: Country.cambodia),
      Location(name: "Kampot", country: Country.cambodia),
    ];
  }
}
