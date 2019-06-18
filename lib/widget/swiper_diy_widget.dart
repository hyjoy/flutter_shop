import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';


class SwiperDiyWidget extends StatelessWidget {

  final List swiperDataList;
  SwiperDiyWidget({Key key, this.swiperDataList}):super(key:key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 333.0,
      child: Swiper(
        itemBuilder: (BuildContext context, int index) {
          return Image.network("${swiperDataList[index]['image']}", fit: BoxFit.fill);
        },
        itemCount: swiperDataList.length,
        pagination: new SwiperPagination(),
        autoplay: true
      ),
    );
  }

}