import 'package:auto_size_text/auto_size_text.dart';
import 'package:cv_template/config/config.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PersonQuoteContact extends StatelessWidget {
  const PersonQuoteContact({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Theme.of(context).colorScheme.secondaryContainer,
      ),
      height: 244,
      padding: const EdgeInsets.fromLTRB(28, 34, 28, 34),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SelectionArea(
            child: AutoSizeText(
              personalData.profileDescription,
              softWrap: true,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SvgPicture.asset("assets/svg/phone.svg"),
                  const SizedBox(
                    width: 5,
                  ),
                  SelectionArea(
                    child: AutoSizeText(
                      personalData.phone,
                      softWrap: true,
                      style: Theme.of(context).textTheme.labelLarge,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                width: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SvgPicture.asset("assets/svg/mail.svg"),
                  const SizedBox(
                    width: 5,
                  ),
                  SelectionArea(
                    child: AutoSizeText(
                      personalData.email,
                      softWrap: true,
                      style: Theme.of(context).textTheme.labelLarge,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                width: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SvgPicture.asset("assets/svg/home.svg"),
                  const SizedBox(
                    width: 5,
                  ),
                  SelectionArea(
                    child: Text(
                      personalData.address.city,
                      overflow: TextOverflow.fade,
                      style: Theme.of(context).textTheme.labelLarge,
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
