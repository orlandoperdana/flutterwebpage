import 'package:flutter/material.dart';
import 'package:personalwebpage/models/education.dart';

import '../../themes.dart';

class EducationCard extends StatelessWidget {
  const EducationCard({Key? key, required this.education}) : super(key: key);

  final Education education;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      padding: EdgeInsets.all(defaultPadding),
      color: cardColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                education.name!,
                style: Theme.of(context).textTheme.subtitle2,
              ),
              Text(
                education.years!,
                style: Theme.of(context).textTheme.subtitle2,
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(education.study!),
              Text(education.gpa!),
            ],
          ),
          SizedBox(
            height: defaultPadding,
          ),
          Text(
            education.description!,
            maxLines: 4,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
