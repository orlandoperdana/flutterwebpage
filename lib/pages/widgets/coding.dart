import 'package:flutter/material.dart';

import '../../themes.dart';
import 'linear_indicator.dart';

class Coding extends StatelessWidget {
  const Coding({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            'Software',
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        LinearIndicator(
          percentage: 0.7,
          label: 'Figma',
        ),
        LinearIndicator(
          percentage: 0.7,
          label: 'Adobe Photoshop',
        ),
        LinearIndicator(
          percentage: 0.75,
          label: 'Adobe Premiere',
        ),
        LinearIndicator(
          percentage: 0.8,
          label: 'Ms. Office',
        ),
        // LinearIndicator(
        //   percentage: 0.7,
        //   label: 'Dart',
        // ),
        // LinearIndicator(
        //   percentage: 0.7,
        //   label: 'Dart',
        // ),
      ],
    );
  }
}
