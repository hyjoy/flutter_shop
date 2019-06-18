

import 'package:flutter/material.dart';

class AdBannerWidget extends StatelessWidget {
  final String advertesPicture;

  AdBannerWidget({Key key, this.advertesPicture}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.network(advertesPicture),
    );
  }
}