import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../../Male/screens/male_head.dart';
import '../../widgets/scan_image.dart';
import '../../widgets/scanner_widget.dart';
import '../../widgets/select_photo_option.dart';

class FemaleRightArm extends StatefulWidget {
  const FemaleRightArm({super.key});

  @override
  State<FemaleRightArm> createState() => _FemaleRightArmState();
}

class _FemaleRightArmState extends State<FemaleRightArm>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    animationController =
        AnimationController(duration: const Duration(seconds: 1), vsync: this);
    animationController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        animateScanAnimation(true);
      } else if (status == AnimationStatus.dismissed) {
        animateScanAnimation(false);
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  late AnimationController animationController;
  bool _animationStopped = false;
  bool scanning = false;

  void animateScanAnimation(bool reverse) {
    if (reverse) {
      animationController.reverse(from: 1.0);
    } else {
      animationController.forward(from: 0.0);
    }
  }

  File? _image;
  Future _pickerImage(ImageSource source) async {
    try {
      final image =
          await ImagePicker().pickImage(source: source); // get the image
      if (image == null) return;
      File? img = File(image.path);
      setState(() {
        _image = img;
        if (!scanning) {
          animateScanAnimation(false);
          setState(() {
            _animationStopped = false;
            scanning = true;
            Future.delayed(const Duration(seconds: 5), () async {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) =>
                    ScanImage(image: Image.asset('assets/x_right.png')),
              ));
            });
          });
        } else {
          setState(() {
            _animationStopped = true;
            scanning = false;
          });
        }
        Navigator.of(context).pop();
      });
    } on Exception catch (e) {
      print(e);
      Navigator.of(context).pop();
    }
  }

  void _showSelectPhotoOptions(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(25.0),
        ),
      ),
      builder: (context) => DraggableScrollableSheet(
          initialChildSize: 0.28,
          maxChildSize: 0.4,
          minChildSize: 0.28,
          expand: false,
          builder: (context, scrollController) {
            return SingleChildScrollView(
              controller: scrollController,
              child: SelectPhotoOption(
                onTap: _pickerImage,
              ),
            );
          }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            children: [
              GestureDetector(
                behavior: HitTestBehavior.translucent,
                onTap: () {
                  _showSelectPhotoOptions(context);
                },
                child: Center(
                  child: Container(
                      height: 200.0,
                      width: 200.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.grey.shade200,
                      ),
                      child: Center(
                        child: _image == null
                            ? const Text(
                                'No Image Selected',
                                style: TextStyle(fontSize: 20),
                              )
                            : CircleAvatar(
                                backgroundImage: FileImage(_image!),
                                radius: 200.0,
                              ),
                      )),
                ),
              ),
              _image == null
                  ? Container()
                  : ImageScannerAnimation(
                      _animationStopped,
                      330,
                      animation: animationController,
                    )
            ],
          ),
          const SizedBox(height: 40),
          _image == null
              ? Container()
              : const Text(
                  'Scanning...',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                )
        ],
      ),
    );
  }
}
