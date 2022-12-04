import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardContainer extends StatelessWidget {
  const CardContainer({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.onTap,
    required this.image,
    required this.height,
  }) : super(key: key);
  final String title;
  final String subtitle;
  final VoidCallback onTap;
  final Image image;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15, top: 20),
      child: Container(
        height: height,
        width: double.infinity,
        child: GestureDetector(
          onTap: onTap,
          child: Card(
            elevation: 7,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      title,
                      style: GoogleFonts.damion(
                        textStyle: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                          color: Colors.indigo,
                        ),
                      ),
                    ),
                    const SizedBox(height: 17),
                    Text(
                      subtitle,
                      style: GoogleFonts.damion(
                          textStyle: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 14)),
                    )
                  ],
                ),
                Image(image: image.image),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
