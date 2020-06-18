import 'package:flutter/material.dart';
import 'package:flutter_designer_pattern_composite/feed/feed.dart';

class FeedImage extends Feed {
  final String text;
  final String url;

  FeedImage({@required this.text, @required this.url}) : super(text: text);

  @override
  Widget renderContent() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          width: double.infinity,
          height: 300,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(url),
              fit: BoxFit.cover,
            ),
          ),
        ),
        super.renderContent(),
      ],
    );
  }
}
