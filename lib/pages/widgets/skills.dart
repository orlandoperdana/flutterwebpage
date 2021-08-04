import 'package:flutter/material.dart';

import '../../themes.dart';
import 'circle_indicator.dart';

class Skills extends StatelessWidget {
  const Skills({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            'Skills',
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        Row(
          children: [
            Expanded(
              child: CircleIndicator(
                percentage: 0.6,
                label: 'Flutter',
              ),
            ),
            SizedBox(
              width: defaultPadding,
            ),
            Expanded(
              child: CircleIndicator(
                percentage: 0.8,
                label: 'Database',
              ),
            ),
            SizedBox(
              width: defaultPadding,
            ),
            Expanded(
              child: CircleIndicator(
                percentage: 0.7,
                label: 'UI Design',
              ),
            ),
          ],
        )
      ],
    );
  }
}
