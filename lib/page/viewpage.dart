import 'package:appstore_clone/widgets/appBar.dart';
import 'package:flutter/material.dart';

class ViewPage extends StatefulWidget {
  const ViewPage({ Key? key }) : super(key: key);

  @override
  State<ViewPage> createState() => _ViewPageState();
}

class _ViewPageState extends State<ViewPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0x0fffffff),
      child: Stack(
        children: [
          ListView(
            physics: const BouncingScrollPhysics(),
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    padding: const EdgeInsets.fromLTRB(20, 36, 20, 0),
                    child: const AppBarTitle(
                      'Today',
                      subtiitle: 'SATURDAY 26 MARCH',
                      profileImage: 'https://img.sbs.co.kr/newsnet/etv/upload/2018/09/12/30000612826_1280.jpg',
                    )
                  ),
                  Container(
                    padding: const EdgeInsets.only(right: 20, left: 20, top: 8),
                    
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}