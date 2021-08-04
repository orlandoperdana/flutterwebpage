import 'package:flutter/material.dart';
import 'package:personalwebpage/responsive.dart';

class Info extends StatelessWidget {
  const Info({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: Responsive.isTablet(context) ? 1 : 1.2,
      child: Container(
        color: Color(0xFF242430),
        child: Column(
          children: [
            Spacer(
              flex: 2,
            ),
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage("assets/images/me.jpg"),
            ),
            Spacer(),
            Text(
              'Orlando P Sihombing',
              style: Theme.of(context).textTheme.subtitle2,
            ),
            Text(
              'Pengelola Sistem Jaringan ATR/BPN \n Flutter Enthusiast',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w200,
                height: 1.5,
              ),
            ),
            Spacer(
              flex: 2,
            ),
          ],
        ),
      ),
    );
  }
}
