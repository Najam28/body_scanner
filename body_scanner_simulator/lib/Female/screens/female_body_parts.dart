import 'package:body_scanner_simulator/Female/screens/female_head.dart';
import 'package:flutter/material.dart';

import '../../utils/appbar.dart';
import 'female_chest.dart';
import 'female_foot.dart';
import 'female_left_arm.dart';
import 'female_legs.dart';
import 'female_right_arm.dart';

class FemaleBodyParts extends StatelessWidget {
  FemaleBodyParts({super.key});
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
                        builder: (context) => const FemaleHead(),
                      ));
                    },
                    child: Image.asset('assets/w_head.png', height: height),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const FemaleChest(),
                      ));
                    },
                    child: Image.asset('assets/w_chest.png', height: height),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const FemaleLeftArm(),
                      ));
                    },
                    child: Image.asset('assets/w_left.png', height: height),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const FemaleRightArm(),
                      ));
                    },
                    child: Image.asset('assets/w_right.png', height: height),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const FemaleLegs(),
                      ));
                    },
                    child: Image.asset('assets/w_legs.png', height: height),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const FemaleFoot(),
                      ));
                    },
                    child: Image.asset('assets/w_foot.png', height: height),
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
