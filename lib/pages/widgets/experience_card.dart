import 'package:flutter/material.dart';
import 'package:personalwebpage/models/experiences.dart';

import '../../responsive.dart';
import '../../themes.dart';

class ExperienceCard extends StatelessWidget {
  const ExperienceCard({Key? key, required this.experiences}) : super(key: key);

  final Experiences experiences;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      color: cardColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            experiences.as!,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.subtitle2,
          ),
          Text(
            experiences.place!,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.subtitle2,
          ),
          Text(
            experiences.years!,
            maxLines: Responsive.isMobileLarge(context) ? 2 : 4,
            overflow: TextOverflow.ellipsis,
          ),
          Spacer(),
          Text(
            experiences.description!,
            maxLines: Responsive.isMobileLarge(context) ? 2 : 4,
            overflow: TextOverflow.ellipsis,
          ),
          Spacer(),
          // TextButton(
          //   onPressed: () {},
          //   child: Text(
          //     "Read More",
          //     style: TextStyle(color: primaryColor),
          //   ),
          // ),
        ],
      ),
    );
  }
}
