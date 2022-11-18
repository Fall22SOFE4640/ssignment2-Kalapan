import 'package:url_launcher/url_launcher.dart';

class Mapslauncher
{
  Mapslauncher._();

  static Future<void> openMap(double Latitude, double Longitude) async
  {
    String googleMapUrl = "https://www.google.com/maps/search/?api=1&query=$Latitude,$Longitude";

    if (await canLaunch(googleMapUrl))
    {
      await launch(googleMapUrl);
    }
    else
    {
      throw 'Map was unable to open';
    }
  }
}