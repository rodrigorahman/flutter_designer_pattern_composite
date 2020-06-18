import 'package:flutter/material.dart';
import 'package:flutter_designer_pattern_composite/feed/feed.dart';
import 'package:flutter_designer_pattern_composite/feed/feed_image.dart';
import 'package:flutter_designer_pattern_composite/feed/feed_youtube.dart';
import 'package:flutter_designer_pattern_composite/feed/ifeed.dart';

import 'feed/feed_propaganda.dart';

class FeedPage extends StatefulWidget {
  @override
  _FeedPageState createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage> {
  List<IFeed> feed = [];

  @override
  void initState() {
    super.initState();
    feed.add(Feed(text: 'Enviando mensagem De texto'));
    feed.add(FeedImage(
      text: 'Enviando feed imagem',
      url: 'https://images.madeiramadeira.com.br/product/images/99157190-adesivo-parede-paisagem-estrada-viagem-natureza-gg567prdfs89loibybfcc-179-1-800x729.jpg'
    ));
    feed.add(Feed(text: 'Enviando mensagem De texto 22'));
    feed.add(FeedPropaganda());
    feed.add(FeedYoutube(text: 'Youtube Vídeo', videoId: '1A3dSh_eLIQ'));
    feed.add(Feed(text: 'Enviando mensagem De texto 3'));
    feed.add(FeedPropaganda());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemCount: feed.length,
        itemBuilder: (context, index) => feed[index].render(),
      ),
    );
  }
}
