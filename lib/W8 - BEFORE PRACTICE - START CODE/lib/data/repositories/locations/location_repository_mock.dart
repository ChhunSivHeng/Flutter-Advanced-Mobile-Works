import 'package:blabla/W8%20-%20BEFORE%20PRACTICE%20-%20START%20CODE/lib/data/dummy_data.dart';
import 'package:blabla/W8%20-%20BEFORE%20PRACTICE%20-%20START%20CODE/lib/model/ride/locations.dart';
import 'location_repository.dart';

class LocationRepositoryMock implements LocationRepository {
  
  @override
  List<Location> fetchLocations() {
    return fakeLocations;
  }
}
