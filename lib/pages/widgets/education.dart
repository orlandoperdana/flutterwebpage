import 'package:flutter/material.dart';
import 'package:personalwebpage/models/education.dart';
import 'package:personalwebpage/pages/widgets/education_card.dart';

import '../../themes.dart';

class Education extends StatelessWidget {
  const Education({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Education",
            style: Theme.of(context).textTheme.headline6,
          ),
          SizedBox(
            height: defaultPadding,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                mockEducation.length,
                (index) => Padding(
                  padding: const EdgeInsets.only(right: defaultPadding),
                  child: EducationCard(
                    education: mockEducation[index],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
