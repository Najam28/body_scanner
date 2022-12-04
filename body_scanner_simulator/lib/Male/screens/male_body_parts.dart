import 'package:body_scanner_simulator/Male/screens/male_chest.dart';
import 'package:body_scanner_simulator/Male/screens/male_foot.dart';
import 'package:body_scanner_simulator/Male/screens/male_left_arm.dart';
import 'package:body_scanner_simulator/Male/screens/male_legs.dart';
import 'package:body_scanner_simulator/Male/screens/male_right_arm.dart';
import 'package:body_scanner_simulator/utils/appbar.dart';
import 'package:flutter/material.dart';

import 'male_head.dart';

class MaleBodyParts extends StatelessWidget {
  MaleBodyParts({super.key});
  double height = 150;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(80),
          child: AppBarContainer(title: 'Select Body Parts')),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 80),
              Wrap(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const Head(),
                      ));
                    },
                    child: Image.asset('assets/head.png', height: height),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const Chest(),
                      ));
                    },
                    child: Image.asset('assets/Chest.png', height: height),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const LeftArm(),
                      ));
                    },
                    child: Image.asset('assets/L_arm.png', height: height),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const RightArm(),
                      ));
                    },
                    child: Image.asset('assets/R_arm.png', height: height),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const Legs(),
                      ));
                    },
                    child: Image.asset('assets/leg.png', height: height),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const Foot(),
                      ));
                    },
                    child: Image.asset('assets/foot.png', height: height),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
