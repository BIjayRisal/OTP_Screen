
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 200,
          decoration: BoxDecoration(
            color: Colors.deepPurple,
            borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(20), bottomLeft: Radius.circular(20)),
          ),
        ),
        
        Align(
          child: Container(
            padding: EdgeInsets.only(top: 20),
              child: SvgPicture.asset('assets/svgimages/icon-mobile.svg',
                color: Colors.white,
              )),
        ),
      ],
    );
  }
}
