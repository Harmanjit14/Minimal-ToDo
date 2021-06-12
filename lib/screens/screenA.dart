import 'package:flutter/material.dart';
import 'package:todo/constants/colorFile.dart';
import 'package:todo/wids/export_wids.dart';

class ScreenA extends StatefulWidget {
  ScreenA({Key? key}) : super(key: key);

  @override
  _ScreenAState createState() => _ScreenAState();
}

class _ScreenAState extends State<ScreenA> {
  final ScrollController controller = new ScrollController();
  final color = new ColorFile();
  double position = 0;

  _scrollListener() {
    position = controller.position.pixels;
  }

  @override
  void initState() {
    controller.addListener(() {
      _scrollListener();
    });
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 50),
        height: size.height,
        child: CustomScrollView(
          controller: controller,
          shrinkWrap: false,
          slivers: [
            SliverToBoxAdapter(
              child:NameWid(),
            ),
          ],
        ),
      ),
    );
  }
}
