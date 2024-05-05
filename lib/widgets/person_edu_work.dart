import 'package:auto_size_text/auto_size_text.dart';
import 'package:cv_template/config/config.dart';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:timelines/timelines.dart';

class PersonEducationWork extends StatelessWidget {
  const PersonEducationWork({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Color.fromRGBO(27, 27, 27, 0.1),
          ),
          width: 280,
          padding: const EdgeInsets.fromLTRB(28, 34, 28, 34),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(
                FontAwesomeIcons.graduationCap,
                size: 40,
                color: Theme.of(context).colorScheme.primary,
              ),
              const SizedBox(
                width: 15,
              ),
              SelectionArea(
                child: Text(
                  selectionColor: Theme.of(context).colorScheme.secondary,
                  "Education",
                  style: Theme.of(context)
                      .textTheme
                      .titleSmall!
                      .copyWith(color: Theme.of(context).colorScheme.primary),
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
          child: FixedTimeline.tileBuilder(
            theme: TimelineTheme.of(context).copyWith(
              nodePosition: 0,
            ),
            builder: TimelineTileBuilder.connected(
              indicatorBuilder: (context, index) {
                return buildIndicator(context, edus);
              },
              connectorBuilder: (_, index, type) {
                return const SolidLineConnector(
                  color: Color.fromRGBO(114, 120, 208, 0.4),
                  thickness: 5,
                );
              },
              contentsAlign: ContentsAlign.basic,
              contentsBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: buildEntry(context, edus[index]),
                );
              },
              itemCount: edus.length,
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Color.fromRGBO(27, 27, 27, 0.1),
          ),
          width: 370,
          padding: const EdgeInsets.fromLTRB(28, 34, 28, 34),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(
                Icons.computer,
                size: 40,
                color: Theme.of(context).colorScheme.primary,
              ),
              const SizedBox(
                width: 15,
              ),
              SelectionArea(
                child: AutoSizeText(
                  "Work Experience",
                  style: Theme.of(context)
                      .textTheme
                      .titleSmall!
                      .copyWith(color: Theme.of(context).colorScheme.primary),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 40,
        ),
        FixedTimeline.tileBuilder(
          theme: TimelineTheme.of(context).copyWith(
            nodePosition: 0,
          ),
          builder: TimelineTileBuilder.connected(
            indicatorBuilder: (context, index) {
              return buildIndicator(context, work);
            },
            connectorBuilder: (_, index, type) {
              return const SolidLineConnector(
                color: Color.fromRGBO(114, 120, 208, 0.4),
                thickness: 5,
              );
            },
            contentsAlign: ContentsAlign.basic,
            contentsBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(24.0),
                child: buildEntryWork(context, work[index]),
              );
            },
            itemCount: work.length,
          ),
        ),
      ],
    );
  }

  ContainerIndicator buildIndicator(
    BuildContext context,
    dynamic entry,
  ) {
    if (entry.runtimeType == String) {
      return const ContainerIndicator(
        size: 48,
        child: Center(
          child: FaIcon(FontAwesomeIcons.graduationCap),
        ),
      );
    } else {
      return const ContainerIndicator(
          size: 48,
          child: Center(
            child: Icon(
              color: Color.fromRGBO(114, 120, 208, 0.4),
              size: 20,
              Icons.circle,
            ),
          ));
    }
  }

  Widget buildEntry(BuildContext context, dynamic edus) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primaryContainer,
              borderRadius: BorderRadius.circular(30)),
          padding: const EdgeInsets.fromLTRB(14, 6, 14, 6),
          child: SelectionArea(
            child: Text(
              '${edus.fromDate.year} - ${edus.toDate.year}',
              style: Theme.of(context).textTheme.labelSmall,
            ),
          ),
        ),
        SelectionArea(
          child: Text(
            edus.degree,
            style: Theme.of(context)
                .textTheme
                .bodyLarge!
                .copyWith(fontWeight: FontWeight.w800),
          ),
        ),
        SelectionArea(
          child: Text(
            edus.university,
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ),
      ],
    );
  }

  Widget buildEntryWork(BuildContext context, dynamic work) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.secondary,
              borderRadius: BorderRadius.circular(30)),
          padding: const EdgeInsets.fromLTRB(14, 6, 14, 6),
          child: SelectionArea(
            child: Text(
              '${work.fromDate.year} - ${work.toDate.year}',
              style: Theme.of(context).textTheme.labelSmall,
            ),
          ),
        ),
        SelectionArea(
          child: Text(
            work.company,
            style: Theme.of(context)
                .textTheme
                .bodyLarge!
                .copyWith(fontWeight: FontWeight.w800),
          ),
        ),
        SelectionArea(
          child: Text(
            work.description,
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ),
      ],
    );
  }
}
