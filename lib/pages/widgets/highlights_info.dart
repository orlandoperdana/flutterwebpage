import 'package:flutter/material.dart';
import 'package:personalwebpage/responsive.dart';

import '../../themes.dart';
import 'counter_indicator.dart';
import 'highlights.dart';

class HighlightsInfo extends StatelessWidget {
  const HighlightsInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: Responsive.isMobileLarge(context)
          ? Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Highlights(
                      counter: CounterIndicator(
                        value: 10,
                        text: "+",
                      ),
                      label: "Drafts",
                    ),
                    Highlights(
                      counter: CounterIndicator(
                        value: 5,
                        text: "+",
                      ),
                      label: "Papers",
                    ),
                  ],
                ),
                const SizedBox(
                  height: defaultPadding,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Highlights(
                      counter: CounterIndicator(
                        value: 3,
                        text: "+",
                      ),
                      label: "Design",
                    ),
                    Highlights(
                      counter: CounterIndicator(
                        value: 5,
                        text: "+",
                      ),
                      label: "Videos",
                    ),
                  ],
                )
              ],
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Highlights(
                  counter: CounterIndicator(
                    value: 10,
                    text: "+",
                  ),
                  label: "Drafts",
                ),
                Highlights(
                  counter: CounterIndicator(
                    value: 5,
                    text: "+",
                  ),
                  label: "Papers",
                ),
                Highlights(
                  counter: CounterIndicator(
                    value: 3,
                    text: "+",
                  ),
                  label: "Design",
                ),
                Highlights(
                  counter: CounterIndicator(
                    value: 5,
                    text: "+",
                  ),
                  label: "Videos",
                ),
              ],
            ),
    );
  }
}
