import 'package:flutter/material.dart';
import 'package:personalwebpage/responsive.dart';

import '../../themes.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: Responsive.isMobile(context) ? 2.5 : 3,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'images/bg_code.jpg',
            fit: BoxFit.cover,
          ),
          Container(
            color: darkColor.withOpacity(0.66),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Hi, I am',
                  style: Responsive.isDesktop(context)
                      ? Theme.of(context).textTheme.headline5!.copyWith(
                          fontWeight: FontWeight.normal, color: primaryColor)
                      : Theme.of(context).textTheme.headline6!.copyWith(
                          fontWeight: FontWeight.normal, color: primaryColor),
                ),
                Text(
                  "Orlando Sihombing",
                  style: Responsive.isDesktop(context)
                      ? Theme.of(context).textTheme.headline3!.copyWith(
                          fontWeight: FontWeight.bold, color: Colors.white)
                      : Theme.of(context).textTheme.headline5!.copyWith(
                          fontWeight: FontWeight.bold, color: Colors.white),
                ),
                if (Responsive.isMobileLarge(context))
                  const SizedBox(
                    height: defaultPadding / 2,
                  ),
                if (!Responsive.isMobileLarge(context))
                  ElevatedButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                        padding: EdgeInsets.symmetric(
                            horizontal: defaultPadding * 2,
                            vertical: defaultPadding),
                        backgroundColor: primaryColor),
                    child: Text(
                      "EXPLORE NOW",
                      style: TextStyle(color: Colors.white),
                    ),
                  )
              ],
            ),
          )
        ],
      ),
    );
  }
}
