import 'package:flutter/material.dart';
import 'package:flutter_shop/service/service_method.dart';

class HotGoodsWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return null;
  }
}

class _HotGoodsState extends State<HotGoodsWidget> {

  @override
  void initState() {
    getHomePageBelowConten().then((val) {
      print(val);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('11111'),
    );
  }
}
