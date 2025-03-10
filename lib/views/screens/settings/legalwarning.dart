import 'package:flutter/material.dart';

import '../../../core/constant/imageasset.dart';

class LegalWarning extends StatelessWidget {
  const LegalWarning({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LegalWarning'),
        actions: [
          Image.asset(AppImage.imagethree),
        ],
        elevation: 0.0,
      ),
      body:Stack(children: [
         Center(child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                opacity: 0.3,
                image:AssetImage(AppImage.imagethree),)
            ),
          )),
         Container(
        //color: AppColor.background,
        padding: const EdgeInsets.all(10),
        child: ListView(children: const [
          Text(
              "Why we need to process your data.What data of yours we may have and for how long.With whom we share the data.What your rights are in this respect and how you can exercise them.REAL MADRID processes different individual’s personal data in order to carry out various activities. Therefore, your personal data can be used in different ways and shared with different recipients depending on each of the specific purposes for which we need the data. Below, we provide detailed information on each of these data processing. We do not carry out individuals decisions making nor profiling that may seriously affect you, and we do not use your personal data for further purposes other than those reflected in this document.Who is responsible for the processing of your data?Identity: Real Madrid Club de FutbolPostal address: Av. Concha Espina, número 1, 28036, MadridlContact Data Protection Office: protecciondedatos@corp.realmadrid.comWith what purpose and legitimacy do we process your personal data?In general, your data will be processed by the CLUB for the fulfilment of the following purposes:Who is responsible for the processing of your data?Identity: Real Madrid Club de FutbolPostal address: Av. Concha Espina, número 1, 28036, MadridlContact Data Protection Office: protecciondedatos@corp.realmadrid.comWith what purpose and legitimacy do we process your personal data?In general, your data will be processed by the CLUB for the fulfilment of the following purposes:Who is responsible for the processing of your data?Identity: Real Madrid Club de FutbolPostal address: Av. Concha Espina, número 1, 28036, MadridlContact Data Protection Office: protecciondedatos@corp.realmadrid.comWith what purpose and legitimacy do we process your personal data?In general, your data will be processed by the CLUB for the fulfilment of the following purposes:"),
        ]),
      ),
      ],)
    );
  }
}
