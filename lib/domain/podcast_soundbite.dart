import 'package:xml/xml.dart';

class PodcastSoundbite{
  final double startTime;
  final double duration;
  final String info;

  PodcastSoundbite(this.startTime, this.duration, this.info);

  factory PodcastSoundbite.parse(XmlElement element){
      if (element == null) {
      return null;
    }
    var startTime = double.parse(element.getAttribute("startTime"), (error) => 0.0);
    var duration = double.parse(element.getAttribute("duration"), (error) => 0.0);
    var info = element.text ?? "";

    return PodcastSoundbite(startTime, duration, info);
  }
}