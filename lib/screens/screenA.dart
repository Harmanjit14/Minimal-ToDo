import 'package:flutter/material.dart';
import 'package:todo/constants/colorFile.dart';

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
              child: Container(
                padding: EdgeInsets.only(left: 10),
                alignment: Alignment.centerLeft,
                child: Container(
                  height: 70,
                  child: Stack(
                    alignment: Alignment.centerLeft,
                    children: [
                      Container(
                        padding: EdgeInsets.only(left:10),
                        height: 50,
                        color: Colors.grey[50],
                        child: Container(
                          alignment: Alignment.centerLeft,
                          padding: EdgeInsets.only(left: 60),
                          height: 50,
                          width: 200,
                          decoration: BoxDecoration(
                            color: color.skinLight,
                            borderRadius: BorderRadius.circular(20)
                          ),
                          child: Text("Hi, Harmanjit Singh"),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: 60,
                        width: 60,
                        child: CircleAvatar(
                          radius: 25,
                          backgroundColor: Colors.grey,
                        ),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.grey[50],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
