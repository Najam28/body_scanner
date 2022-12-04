import 'package:body_scanner_simulator/Female/screens/female_body_parts.dart';
import 'package:body_scanner_simulator/Male/screens/male_body_parts.dart';
import 'package:body_scanner_simulator/utils/appbar.dart';
import 'package:body_scanner_simulator/utils/cardcontainer.dart';
import 'package:flutter/material.dart';

class Gender extends StatelessWidget {
  const Gender({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(80),
          child: AppBarContainer(
            title: 'Select Gender',
          )),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CardContainer(
              title: 'Male',
              subtitle: 'This is Male Category',
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => MaleBodyParts(),
                ));
              },
              image: Image.asset('assets/man.png', height: 100),
              height: 250,
            ),
            CardContainer(
              title: 'Female',
              subtitle: 'This is Female Category',
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => FemaleBodyParts(),
                ));
              },
              image: Image.asset('assets/woman.png', height: 100),
              height: 250,
            ),
          ],
        ),
      ),
    );
  }
}
