import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        TextButton(
          onPressed: () => Navigator.pushNamed(context, "/imprint"),
          child: Text(
            style: Theme.of(context).textTheme.labelMedium,
            "Impressum",
          ),
        ),
        TextButton(
          onPressed: () => Navigator.pushNamed(context, "/data"),
          child: Text(
            style: Theme.of(context).textTheme.labelMedium,
            "Datenschutzerklärung",
          ),
        ),
      ],
    );
  }
}
