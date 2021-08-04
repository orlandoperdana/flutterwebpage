import 'package:flutter/material.dart';
import 'package:personalwebpage/models/experiences.dart';
import 'package:personalwebpage/pages/widgets/experience_card.dart';

import '../../responsive.dart';
import '../../themes.dart';

class Experiences extends StatelessWidget {
  const Experiences({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Experiences",
          style: Theme.of(context).textTheme.headline6,
        ),
        SizedBox(
          height: defaultPadding,
        ),
        Responsive(
          mobile: ExperienceGridView(
            crossAxisCount: 1,
            childAspectRatio: 2,
          ),
          mobileLarge: ExperienceGridView(
            crossAxisCount: 2,
          ),
          desktop: ExperienceGridView(),
          tablet: ExperienceGridView(childAspectRatio: 1.1),
        )
      ],
    );
  }
}

class ExperienceGridView extends StatelessWidget {
  const ExperienceGridView({
    Key? key,
    this.crossAxisCount = 3,
    this.childAspectRatio = 1.5,
  }) : super(key: key);

  final int crossAxisCount;
  final double childAspectRatio;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: mockExperiences.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: crossAxisCount,
          childAspectRatio: childAspectRatio,
          crossAxisSpacing: defaultPadding,
          mainAxisSpacing: defaultPadding),
      itemBuilder: (context, index) => ExperienceCard(
        experiences: mockExperiences[index],
      ),
    );
  }
}
