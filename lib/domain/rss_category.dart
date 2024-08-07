import 'package:xml/xml.dart';

class RssCategory {
  final String? domain;
  final String value;

  RssCategory(this.domain, this.value);

  static RssCategory? parse(XmlElement? element) {
    if (element == null) {
      return null;
    }
    var domain = element.getAttribute("domain");
    var value = element.text;

    return RssCategory(domain, value);
  }
}
