import 'package:flutter/material.dart';
import 'package:personalwebpage/models/projects.dart';
import 'package:personalwebpage/responsive.dart';

import '../../themes.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard({
    Key? key,
    required this.project,
  }) : super(key: key);

  final Project project;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      color: cardColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            project.title!,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.subtitle2,
          ),
          Spacer(),
          Text(
            project.description!,
            maxLines: Responsive.isMobileLarge(context) ? 3 : 4,
            overflow: TextOverflow.ellipsis,
          ),
          Spacer(),
          TextButton(
            onPressed: () {},
            child: Text(
              "Read More",
              style: TextStyle(color: primaryColor),
            ),
          ),
        ],
      ),
    );
  }
}
