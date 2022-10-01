import 'package:kartaa_app/service/api_service.dart';
import 'package:http/http.dart' as http;

class LocationService {
  Future fetchlocation(
    String longitutde,
    String latitude,
  ) async {
    var queryUri = Config.locationApi;
    final response = await http.get(Uri.parse(queryUri));
    if (response.statusCode == 200) {
      final address = response.body;
      return address;
    } else {
      throw Exception('Failed to load data from API');
    }
  }
}
