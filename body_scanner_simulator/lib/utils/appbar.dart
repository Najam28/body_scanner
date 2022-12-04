import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppBarContainer extends StatelessWidget {
  const AppBarContainer({
    Key? key,
    required this.title,
  }) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: const Text(''),
      centerTitle: true,
      backgroundColor: Colors.indigo,
      title: Text(
        title,
        style: GoogleFonts.dancingScript(),
      ),
    );
  }
}
