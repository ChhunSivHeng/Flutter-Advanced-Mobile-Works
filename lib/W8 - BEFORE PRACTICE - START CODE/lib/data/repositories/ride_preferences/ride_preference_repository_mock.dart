import 'package:blabla/W8%20-%20BEFORE%20PRACTICE%20-%20START%20CODE/lib/data/dummy_data.dart';
import 'package:blabla/W8%20-%20BEFORE%20PRACTICE%20-%20START%20CODE/lib/data/repositories/ride_preferences/ride_preference_repository.dart';
import 'package:blabla/W8%20-%20BEFORE%20PRACTICE%20-%20START%20CODE/lib/model/ride_pref/ride_pref.dart';


class RidePreferenceRepositoryMock implements RidePreferenceRepository{
  @override
  List<RidePreference> GetRidePref() {
    // TODO: implement GetRidePref
    return fakeRidePrefs;
  }
}