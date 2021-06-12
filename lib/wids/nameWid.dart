import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo/constants/colorFile.dart';
import 'package:todo/models/export_mods.dart';

class NameWid extends StatelessWidget {
  NameWid({Key? key}) : super(key: key);
  final color = new ColorFile();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
        width: 300,
      padding: EdgeInsets.only(left: 10),
      alignment: Alignment.centerLeft,
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          Container(
            padding: EdgeInsets.only(left: 10),
            height: 50,
            width: 230,
            color: Colors.grey[50],
            child :Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(left: 20),
              height: 50,
              decoration: BoxDecoration(
                  color: color.skinLight,
                  borderRadius: BorderRadius.circular(20)),
              child: Container(
                padding: EdgeInsets.only(left:25, right: 25),
                height: 30,
                child: Text(
                  "Hi, ${user.name.toString()}",
                  style: GoogleFonts.poppins(
                    color: color.gold,
                    fontSize: 18,
                  ),
                  overflow: TextOverflow.clip,
                ),
              ),
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
    );
  }
}
