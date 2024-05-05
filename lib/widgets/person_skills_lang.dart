import 'package:cv_template/config/config.dart';

import 'package:cv_template/widgets/footer.dart';

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/svg.dart';

class PersonSkillsLang extends StatelessWidget {
  const PersonSkillsLang({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Theme.of(context).colorScheme.secondaryContainer,
          ),
          width: 280,
          padding: const EdgeInsets.fromLTRB(28, 34, 28, 34),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(
                Icons.code,
                size: 40,
                color: Theme.of(context).colorScheme.tertiary,
              ),
              const SizedBox(
                width: 15,
              ),
              SelectionArea(
                child: Text(
                  selectionColor: Theme.of(context).colorScheme.secondary,
                  "My Skills",
                  style: Theme.of(context).textTheme.titleSmall,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 40,
        ),
        SizedBox(
          height: 600,
          child: ListView.builder(
            itemCount: skills.length,
            itemBuilder: ((context, index) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SvgPicture.asset("assets/svg/flutter.svg"),
                      const SizedBox(
                        width: 16,
                      ),
                      SelectionArea(
                        child: Text(
                          skills[index].name,
                          selectionColor:
                              Theme.of(context).colorScheme.secondary,
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 33),
                  SliderTheme(
                    data: SliderThemeData(
                      overlayShape: SliderComponentShape.noThumb,
                      thumbShape:
                          const RoundSliderThumbShape(enabledThumbRadius: 0),
                      trackHeight: 6,
                      activeTrackColor: Color(0xfff2f2fA),
                      inactiveTrackColor: Color.fromRGBO(114, 120, 208, 0.4),
                    ),
                    child: Slider(
                      value: skills[index].rating.toDouble(),
                      min: 0,
                      max: 5,
                      label: skills[index].rating.toString(),
                      onChanged: (double value) {},
                    ),
                  ),
                  const SizedBox(height: 40),
                ],
              );
            }),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Theme.of(context).colorScheme.secondaryContainer,
          ),
          width: 280,
          padding: const EdgeInsets.fromLTRB(28, 34, 28, 34),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(
                Icons.chat_bubble_sharp,
                size: 40,
                color: Theme.of(context).colorScheme.tertiary,
              ),
              const SizedBox(
                width: 15,
              ),
              SelectionArea(
                child: Text(
                  selectionColor: Theme.of(context).colorScheme.secondary,
                  "Languages",
                  style: Theme.of(context).textTheme.titleSmall,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 40,
        ),
        SizedBox(
          height: 600,
          child: Row(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: languages.length,
                  itemBuilder: ((context, index) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SelectionArea(
                              child: Text(
                                languages[index].name,
                                selectionColor:
                                    Theme.of(context).colorScheme.secondary,
                                style: Theme.of(context).textTheme.bodyMedium,
                              ),
                            ),
                            RatingBar.builder(
                              updateOnDrag: false,
                              unratedColor: Color.fromRGBO(114, 120, 208, 0.4),
                              initialRating: languages[index].rating.toDouble(),
                              minRating: 1,
                              direction: Axis.horizontal,
                              itemCount: 5,
                              itemSize: 30,
                              itemPadding:
                                  const EdgeInsets.symmetric(horizontal: 4.0),
                              itemBuilder: (context, _) => Container(
                                width:
                                    30.0, // Adjust the size of the circle here
                                height:
                                    30.0, // Adjust the size of the circle here
                                decoration: BoxDecoration(
                                  color: Color.fromRGBO(242, 242, 250, 1),
                                  shape: BoxShape.circle,
                                ),
                              ),
                              onRatingUpdate: (rating) {},
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  color: Theme.of(context)
                                      .colorScheme
                                      .primaryContainer,
                                  borderRadius: BorderRadius.circular(30)),
                              padding: const EdgeInsets.fromLTRB(14, 6, 14, 6),
                              child: SelectionArea(
                                child: Text(
                                  languages[index].skillLevel,
                                  style: Theme.of(context)
                                      .textTheme
                                      .labelSmall!
                                      .copyWith(color: Color(0xFF383B5E)),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 40),
                      ],
                    );
                  }),
                ),
              ),
            ],
          ),
        ),
        const Footer()
      ],
    );
  }
}
