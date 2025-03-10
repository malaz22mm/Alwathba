import 'package:url_launcher/url_launcher.dart';

class UrlLuncher{
  Future<void> launchURL() async {
    const url = 'https://www.facebook.com';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

}
