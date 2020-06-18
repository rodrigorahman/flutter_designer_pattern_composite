import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_designer_pattern_composite/feed/ifeed.dart';

class FeedPropaganda implements IFeed {
  @override
  Widget render() {
    return Container(
      color: Colors.blue,
      width: double.infinity,
      height: 100,
      child: Center(child: Text('PROPAGANDA CHATA', textAlign: TextAlign.center,)),
    );
  }

  @override
  Widget renderBottom() {
    throw UnimplementedError();
  }

  @override
  Widget renderContent() {
    throw UnimplementedError();
  }
}
