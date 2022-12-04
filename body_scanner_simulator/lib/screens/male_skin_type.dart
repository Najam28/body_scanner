import 'package:body_scanner_simulator/Male/screens/male_body_parts.dart';
import 'package:body_scanner_simulator/utils/appbar.dart';
import 'package:body_scanner_simulator/utils/cardcontainer.dart';
import 'package:flutter/material.dart';

class SkinType extends StatelessWidget {
  const SkinType({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(80),
          child: AppBarContainer(title: 'Select Skin Type')),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CardContainer(
              title: 'Fair',
              subtitle: 'Fair Skin Tone!',
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => MaleBodyParts(),
                ));
              },
              image: Image.asset('assets/fair.png'),
              height: 80,
            ),
            CardContainer(
              title: 'Light Brown',
              subtitle: 'Light Skin Tone!',
              onTap: () {},
              image: Image.asset('assets/light_brown.png'),
              height: 80,
            ),
            CardContainer(
              title: 'Brown',
              subtitle: 'Brown Skin Tone!',
              onTap: () {},
              image: Image.asset('assets/brown.png'),
              height: 80,
            ),
            CardContainer(
              title: 'Wheatish',
              subtitle: 'Wheatish Skin Tone!',
              onTap: () {},
              image: Image.asset('assets/wheatish.png'),
              height: 80,
            ),
            CardContainer(
              title: 'Dark Brown',
              subtitle: 'Dark Brown Skin Tone!',
              onTap: () {},
              image: Image.asset('assets/dark_brown.png'),
              height: 80,
            ),
          ],
        ),
      ),
    );
  }
}
