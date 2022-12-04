import 'package:body_scanner_simulator/utils/appbar.dart';
import 'package:body_scanner_simulator/utils/cardcontainer.dart';
import 'package:flutter/material.dart';

class MaleFrontBodySide extends StatelessWidget {
  const MaleFrontBodySide({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(80),
          child: AppBarContainer(title: 'Select Body Side')),
      body: Column(
        children: [
          CardContainer(
            title: 'Front Body ',
            subtitle: 'Scan Human Front Body!',
            onTap: () {},
            image: Image.asset('assets/full_body.png'),
            height: 140,
          ),
          CardContainer(
            title: 'Back Body ',
            subtitle: 'Scan Human Back Body!',
            onTap: () {},
            image: Image.asset('assets/back_body.png'),
            height: 140,
          )
        ],
      ),
    );
  }
}
