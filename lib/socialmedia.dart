import 'package:url_launcher/url_launcher.dart';
class socialmedia {
  static Future<void> whatsapp() async {
    final Uri _url = Uri.parse(
        'whatsapp://send?phone=918169422367&text=i need help for cars');
    if (!await launchUrl(_url)) {
      throw 'Could not launch $_url';
    }
  }

  static Future<void> mail() async {
    Uri mail = Uri.parse(
        "mailto:prathamnanda2003@gmail.com?subject=Car help&body=hi");
    if (await launchUrl(mail)) {
      //email app opened
    } else {
      //email app is not opened
    }
  }

  static Future<void> ins() async {
    Uri mail = Uri.parse("https://www.instagram.com/prathamnanda28/");
    if (await launchUrl(mail)) {
      //email app opened
    } else {
      //email app is not opened
    }
  }

  static Future<void> phn() async {
    Uri mail = Uri.parse("tel://9223585956");
    if (await launchUrl(mail)) {
      //email app opened
    } else {
      //email app is not opened
    }
  }
  static Future<void> facebook() async {
    Uri mail = Uri.parse("fb://pratham nanda/");
    if (await launchUrl(mail)) {
      //email app opened
    } else {
      //email app is not opened
    }
  }
}