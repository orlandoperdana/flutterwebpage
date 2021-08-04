import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:personalwebpage/pages/widgets/skills.dart';
import 'package:personalwebpage/themes.dart';
import 'package:url_launcher/url_launcher.dart';

import 'area_info.dart';
import 'coding.dart';
import 'info.dart';
import 'knowledges.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            Info(),
            Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.all(defaultPadding),
                child: Column(
                  children: [
                    AreaInfo(
                      title: "Nationality",
                      text: "Indonesia",
                    ),
                    AreaInfo(
                      title: "City",
                      text: "Binjai",
                    ),
                    AreaInfo(
                      title: "Age",
                      text: "27",
                    ),
                    Skills(),
                    SizedBox(
                      height: defaultPadding,
                    ),
                    Coding(),
                    Knowledges(),
                    Divider(),
                    SizedBox(
                      height: defaultPadding / 2,
                    ),
                    Container(
                      margin: EdgeInsets.only(top: defaultPadding),
                      color: Color(0xFF24242E),
                      child: Row(
                        children: [
                          Spacer(),
                          IconButton(
                            onPressed: () {
                              _launchLinkedIn(
                                  "https://www.linkedin.com/in/orlando-perdana-sihombing-86b90710b");
                            },
                            icon: SvgPicture.asset("icons/linkedin.svg"),
                          ),
                          IconButton(
                            onPressed: () {
                              _launchInstagram(
                                  "https://www.instagram.com/orlandosihombing");
                            },
                            icon: SvgPicture.asset("icons/instagram.svg"),
                          ),
                          IconButton(
                            onPressed: () {
                              _launchGithub(
                                  "https://github.com/orlandoperdana");
                            },
                            icon: SvgPicture.asset("icons/github.svg"),
                          ),
                          Spacer(),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

void _launchGithub(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

void _launchInstagram(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

void _launchLinkedIn(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
