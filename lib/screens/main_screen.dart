import 'package:cv_template/config/config.dart';

import 'package:cv_template/widgets/person_edu_work.dart';
import 'package:cv_template/widgets/person_quote_contact.dart';
import 'package:cv_template/widgets/person_skills_lang.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:syntax_highlight/syntax_highlight.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key, required this.theme});

  static const routeName = '/MainScreen';
  final HighlighterTheme theme;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          double availableWidth = constraints.maxWidth;
          if (availableWidth >= 1400) {
            return SingleChildScrollView(
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(70.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(child: PersonalImageAndName()),
                        SizedBox(width: 50),
                        Expanded(child: PersonQuoteContact()),
                      ],
                    ),
                  ),
                  const SizedBox(height: 200),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Expanded(
                          child: Padding(
                              padding: EdgeInsets.all(70),
                              child: PersonSkillsLang())),
                      const SizedBox(
                        width: 100,
                      ),
                      Expanded(
                        child: Container(
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(24)),
                              color: Color(0xffe4e5f4),
                            ),
                            child: const Padding(
                                padding: EdgeInsets.all(70.0),
                                child: PersonEducationWork())),
                      ),
                    ],
                  ),
                ],
              ),
            );
          } else if (availableWidth >= 750) {
            return SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(70),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const PersonalImageAndName(),
                    const SizedBox(height: 100),
                    const PersonQuoteContact(),
                    const SizedBox(height: 100),
                    Container(
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(24)),
                          color: Color(0xffe4e5f4),
                        ),
                        child: const Padding(
                            padding: EdgeInsets.all(70.0),
                            child: PersonEducationWork())),
                    const SizedBox(height: 100),
                    const PersonSkillsLang(),
                  ],
                ),
              ),
            );
          } else {
            return Center(
              child: CircularProgressIndicator(
                color: Theme.of(context).colorScheme.secondary,
              ),
            );
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
          child: SvgPicture.asset(
            "assets/svg/pdf.svg",
            color: Theme.of(context).colorScheme.primary,
          ),
          onPressed: () {
            Navigator.pushNamed(context, "/pdfview");
          }),
    );
  }
}

class PersonalImageAndName extends StatelessWidget {
  const PersonalImageAndName({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 122,
          backgroundColor: Theme.of(context).colorScheme.tertiary,
          child: CircleAvatar(
            radius: 120,
            backgroundColor: Theme.of(context).colorScheme.tertiary,
            backgroundImage:
                const AssetImage('assets/images/profile_picture.jpeg'),
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SelectionArea(
              child: Text(
                selectionColor: Theme.of(context).colorScheme.secondary,
                personalData.firstName,
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
            SelectionArea(
              child: Text(
                selectionColor: Theme.of(context).colorScheme.secondary,
                personalData.lastName,
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
            const SizedBox(height: 15),
            SelectionArea(
              child: Text(
                selectionColor: Theme.of(context).colorScheme.secondary,
                "Mobile App Developer",
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
