import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../web/web_page.dart';
import '../mobile/mobile_page.dart';
class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const VxDevice(
        mobile: WebPage(), web: WebPage());
  }
}
