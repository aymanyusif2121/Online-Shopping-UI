import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:online_shopping/constant.dart';

import 'body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      leading: IconButton(
        icon: SvgPicture.asset('assets/icons/back.svg'),
        onPressed: () {},
      ),
      backgroundColor: Colors.white,
      elevation: 0,
      actions: [
        Row(
          children: [
            IconButton(
              icon: SvgPicture.asset(
                'assets/icons/search.svg',
                color: textColor,
              ),
              onPressed: () {},
            ),
          ],
        ),
        IconButton(
          icon: SvgPicture.asset(
            'assets/icons/cart.svg',
            color: textColor,
          ),
          onPressed: () {},
        ),
        SizedBox(
          width: defaultPaddin / 2,
        ),
      ],
    );
  }
}
