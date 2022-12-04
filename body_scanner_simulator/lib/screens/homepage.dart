import 'package:body_scanner_simulator/screens/gender.dart';
import 'package:flutter/material.dart';

import '../utils/appbar.dart';
import '../utils/cardcontainer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(80),
          child: AppBarContainer(
            title: 'Start Body Scanner',
          )),
      body: Column(
        children: [
          CardContainer(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const Gender(),
              ));
            },
            title: 'Start App',
            subtitle: 'Start Body Scanner',
            image: Image.asset('assets/start-button.png'),
            height: 80,
          ),
          CardContainer(
            title: 'Rate App',
            subtitle: 'Give us your Feedback!',
            onTap: () {},
            image: Image.asset('assets/rating.png'),
            height: 80,
          ),
          CardContainer(
            title: 'Privacy Policy',
            subtitle: 'Read our Privacy Policy',
            onTap: () {},
            image: Image.asset(
              'assets/privacy-policy.png',
            ),
            height: 80,
          ),
          CardContainer(
            title: 'Terms And Condition',
            subtitle: 'Read our Terms of Services!',
            onTap: () {},
            image: Image.asset(
              'assets/terms-and-conditions.png',
            ),
            height: 80,
          ),
        ],
      ),
    );
  }
}
