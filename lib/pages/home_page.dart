import 'package:flutter/material.dart';
import 'package:personalwebpage/pages/main_page.dart';
import 'package:personalwebpage/pages/widgets/education.dart';
import 'package:personalwebpage/pages/widgets/experiences.dart';
import 'package:personalwebpage/pages/widgets/highlights_info.dart';
import 'package:personalwebpage/pages/widgets/home_banner.dart';
import 'package:personalwebpage/pages/widgets/projects.dart';
// import 'package:personalwebpage/pages/widgets/recommendations.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainPage(
      children: [
        HomeBanner(),
        HighlightsInfo(),
        Projects(),
        // Recommendations(),
        Education(),
        Experiences(),
      ],
    );
  }
}
