import 'package:blabla/W8%20-%20BEFORE%20PRACTICE%20-%20START%20CODE/lib/data/dummy_data.dart';
import 'package:blabla/W8%20-%20BEFORE%20PRACTICE%20-%20START%20CODE/lib/model/ride/ride.dart';
import 'ride_repository.dart';

class RideRepositoryMock implements RideRepository {
  
  @override
  List<Ride> fetchRides() {
    return fakeRides;
  }
}