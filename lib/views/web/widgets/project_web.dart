import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:hovering/hovering.dart';
class Project extends StatefulWidget {
  final projectKey;
  Project(this.projectKey);



  @override
  _ProjectState createState() => _ProjectState();
}

class _ProjectState extends State<Project> {
  @override
  Widget build(BuildContext context) {
    return

    VxBox(
      child:
      Container(
        key: widget.projectKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("< Projects >").text.bold.xl6.size(20).gray800.make().p16(),
            10.heightBox,
            VxSwiper(
                scrollDirection: Axis.horizontal,
                // aspectRatio: 16/9,
                height:context.isMobile? context.screenHeight:context.screenHeight*0.5,
                enableInfiniteScroll: true,
                initialPage: 0,
                viewportFraction: 0.6,
                reverse: false,
                enlargeCenterPage: true,
                isFastScrollingEnabled: false,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 5),
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                autoPlayCurve: Curves.easeInCubic,
                items: [

                  VxBox(
                      child: Image.asset("assets/images/slider1.jpg",height: context.screenHeight*0.4,width: context.screenWidth*0.5,fit: BoxFit.cover,)
                  ).width(context.screenWidth*0.5).make(),
                  VxBox(
                      child: Image.asset("assets/images/slider2.jpg",height: context.screenHeight*0.4,width: context.screenWidth*0.5,fit: BoxFit.cover)
                  ).width(context.screenWidth*0.5).make(),
                  VxBox(
                      child: Image.asset("assets/images/slider3.jpg",height: context.screenHeight*0.4,width: context.screenWidth*0.5,fit: BoxFit.cover)
                  ).width(context.screenWidth*0.5).make(),
                  VxBox(
                      child: Image.asset("assets/images/slider4.jpg",height: context.screenHeight*0.4,width: context.screenWidth*0.5,fit: BoxFit.cover)
                  ).width(context.screenWidth*0.5).make()
                ])
          ],
        ),

      ),
    ).height(context.screenHeight*0.9).black.make();
  }
}
