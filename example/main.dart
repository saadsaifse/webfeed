import 'package:http/http.dart' as http;
import 'package:webfeed/webfeed.dart';

const url = "https://feeds.fireside.fm/lushu/rss";
void main() {
  var client = new http.Client();

  // RSS feed
  //client
  //    .get("https://developer.apple.com/news/releases/rss/releases.rss")
  //    .then((response) {
  //  return response.body;
  //}).then((bodyString) {
  //  var channel = new RssFeed.parse(bodyString);
  //  print(channel);
  //  return channel;
  //});

  //// Atom feed
  //client.get("https://www.theverge.com/rss/index.xml").then((response) {
  //  return response.body;
  //}).then((bodyString) {
  //  var feed = new AtomFeed.parse(bodyString);
  //  print(feed);
  //  return feed;
  //});

  client.get(Uri.parse(url)).then((response) {
    return response.body;
  }).then((bodyString) {
    var channel = new RssFeed.parse(bodyString);
    print(channel.author);
    // print(channel.podcastFunding.first.info);
    // print(channel.items.first.podcastTranscript.first.url);
    // print(channel.items.first.podcastChapters.url);
    // print(channel.podcastLocation);
    // print(channel.podcastPerson);
    return channel;
  });
}
