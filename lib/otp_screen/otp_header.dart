
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SvgPicture.asset('assets/svgimages/icon-mobile.svg',color: Colors.white, ),

        ],
      ),
    );
  }
}
