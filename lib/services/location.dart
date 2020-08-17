import 'package:geolocator/geolocator.dart';


class Location{

  double latitude;
  double longitude;

  Future<void> getCurrentLocation() async {
    try{
      Position position = await Geolocator().getCurrentPosition(desiredAccuracy: LocationAccuracy.best);
      latitude = position.latitude;
      longitude = position.longitude;
    }catch(e) {
      print(e);
    }
  }
}


//var temperature = jsonDecode(data)['main']['temp'];
//var condition = jsonDecode(data)['weather'][0]['id'];
//var cityName = jsonDecode(data)['name'];
