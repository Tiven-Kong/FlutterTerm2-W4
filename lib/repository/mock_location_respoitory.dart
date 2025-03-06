

import '../../model/ride/locations.dart';
import 'location_respository.dart';

class MockLocationsRepository extends LocationsRepository {
  final List<Location> _locations = [
    Location(country: Country.cambodia, name: "Phnom Penh"),
    Location(country: Country.cambodia, name: "Siem Reap"),
    Location(country: Country.cambodia, name: "Sihanoukville"),

  ];

  @override
  List<Location> getLocations() {
    return _locations;
  }


}