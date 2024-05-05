import 'package:cv_template/config/config.dart';
import 'package:flutter/material.dart';

class ImpressumScreen extends StatelessWidget {
  const ImpressumScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: const Icon(
            Icons.chevron_left,
          ),
        ),
        title: Text(
          "Impressum",
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(60),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Verantwortlicher",
                style: Theme.of(context).textTheme.titleMedium,
              ),
              Text(
                "Angaben gemäß §5 TMG",
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              Text(
                style: Theme.of(context).textTheme.bodySmall,
                "${personalData.firstName} ${personalData.lastName}",
              ),
              Text(
                  style: Theme.of(context).textTheme.bodySmall,
                  "${personalData.address.street}, ${personalData.address.zip} ${personalData.address.city}"),
              Text(
                "Vertreten durch",
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              Text(
                style: Theme.of(context).textTheme.bodySmall,
                "${personalData.firstName} ${personalData.lastName}",
              ),
              Text(
                "Kontakt",
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              Text(
                "Telefon: ${personalData.phone}",
                style: Theme.of(context).textTheme.bodySmall,
              ),
              Text(
                "Email: ${personalData.email}",
                style: Theme.of(context).textTheme.bodySmall,
              ),
              Text(
                "Verantwortlich für den Inhalt nach § 55 Abs. 2 RStV",
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              Text(
                style: Theme.of(context).textTheme.bodySmall,
                "${personalData.firstName} ${personalData.lastName}",
              ),
              Text(
                  style: Theme.of(context).textTheme.bodySmall,
                  "${personalData.address.street}, ${personalData.address.zip} ${personalData.address.city}"),
              Text(
                "Streitschlichtung",
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              Text(
                  style: Theme.of(context).textTheme.bodySmall,
                  "Die Europäische Kommission stellt eine Plattform zur Online-Streitbeilegung (OS) bereit: https://ec.europa.eu/consumers/odr Unsere E-Mail-Adresse finden Sie oben im Impressum.")
            ],
          ),
        ),
      ),
    );
  }
}
