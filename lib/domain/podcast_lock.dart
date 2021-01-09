import 'package:xml/xml.dart';

class PodcastLocked{
  final String owner;
  final bool locked;

  PodcastLocked(this.owner, this.locked);

  factory PodcastLocked.parse(XmlElement element) {
    if (element == null) {
      return null;
    }
    var owner = element.getAttribute("owner").trim() ?? "";
    var locked = element.text != null && element.text == "yes";

    return PodcastLocked(owner, locked);
  }
}