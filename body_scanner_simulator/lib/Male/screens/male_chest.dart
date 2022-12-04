import 'package:flutter/material.dart';

class Chest extends StatefulWidget {
  const Chest({super.key});

  @override
  State<Chest> createState() => _ChestState();
}

class _ChestState extends State<Chest> with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(child: Image.asset('assets/man_chest.png', height: 300)),

              // Draggable(
              //   data: Image.asset('assets/x_chest.png', width: double.infinity),
              // feedback: Container(
              //   height: 50,
              //   width: 200,
              //   decoration: BoxDecoration(
              //       border: Border.all(color: Colors.red),
              //       color: Colors.pink.withOpacity(0.05)),
              //     child: Visibility(
              //         visible: true,
              //         child: Image.asset('assets/x_chest.png',
              //             width: double.infinity)),
              //   ),
              //   child:
              //       Center(child: Image.asset('assets/man_chest.png', height: 200)),
              // ),
            ],
          ),
          Center(
              child: Visibility(
                  // visible: false,
                  child: Draggable(
                      feedback: Container(
                        height: 50,
                        width: 200,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.red),
                            color: Colors.pink.withOpacity(0.05)),
                      ),
                      child: Image.asset('assets/x_chest.png', height: 1000)))),
        ],
      ),
    );
  }
}


// @override
  // void initState() {
  //   animationController =
  //       AnimationController(duration: const Duration(seconds: 1), vsync: this);
  //   animationController.addStatusListener((status) {
  //     if (status == AnimationStatus.completed) {
  //       animateScanAnimation(true);
  //     } else if (status == AnimationStatus.dismissed) {
  //       animateScanAnimation(false);
  //     }
  //   });
  //   super.initState();
  // }

  // @override
  // void dispose() {
  //   animationController.dispose();
  //   super.dispose();
  // }

  // late AnimationController animationController;
  // bool _animationStopped = false;
  // bool scanning = false;

  // void animateScanAnimation(bool reverse) {
  //   if (reverse) {
  //     animationController.reverse(from: 1.0);
  //   } else {
  //     animationController.forward(from: 0.0);
  //   }
  // }

  // File? _image;
  // Future _pickerImage(ImageSource source) async {
  //   try {
  //     final image =
  //         await ImagePicker().pickImage(source: source); // get the image
  //     if (image == null) return;
  //     File? img = File(image.path);
  //     setState(() {
  //       _image = img;
  //       if (!scanning) {
  //         animateScanAnimation(false);
  //         setState(() {
  //           _animationStopped = false;
  //           scanning = true;
  //           Future.delayed(const Duration(seconds: 5), () async {
  //             Navigator.of(context).push(MaterialPageRoute(
  //               builder: (context) =>
  //                   ScanImage(image: Image.asset('assets/x_chest.png')),
  //             ));
  //           });
  //         });
  //       } else {
  //         setState(() {
  //           _animationStopped = true;
  //           scanning = false;
  //         });
  //       }
  //       Navigator.of(context).pop();
  //     });
  //   } on Exception catch (e) {
  //     print(e);
  //     Navigator.of(context).pop();
  //   }
  // }

  // void _showSelectPhotoOptions(BuildContext context) {
  //   showModalBottomSheet(
  //     context: context,
  //     isScrollControlled: true,
  //     shape: const RoundedRectangleBorder(
  //       borderRadius: BorderRadius.vertical(
  //         top: Radius.circular(25.0),
  //       ),
  //     ),
  //     builder: (context) => DraggableScrollableSheet(
  //         initialChildSize: 0.28,
  //         maxChildSize: 0.4,
  //         minChildSize: 0.28,
  //         expand: false,
  //         builder: (context, scrollController) {
  //           return SingleChildScrollView(
  //             controller: scrollController,
  //             child: SelectPhotoOption(
  //               onTap: _pickerImage,
  //             ),
  //           );
  //         }),
  //   );
  // }

///////    Widget /////////////
// Scaffold(
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           Stack(
//             children: [
//               GestureDetector(
//                 behavior: HitTestBehavior.translucent,
//                 onTap: () {
//                   _showSelectPhotoOptions(context);
//                 },
//                 child: Center(
//                   child: Container(
//                       height: 200.0,
//                       width: 200.0,
//                       decoration: BoxDecoration(
//                         shape: BoxShape.circle,
//                         color: Colors.grey.shade200,
//                       ),
//                       child: Center(
//                         child: _image == null
//                             ? const Text(
//                                 'No Image Selected',
//                                 style: TextStyle(fontSize: 20),
//                               )
//                             : CircleAvatar(
//                                 backgroundImage: FileImage(_image!),
//                                 radius: 200.0,
//                               ),
//                       )),
//                 ),
//               ),
//               _image == null
//                   ? Container()
//                   : ImageScannerAnimation(
//                       _animationStopped,
//                       330,
//                       animation: animationController,
//                     )
//             ],
//           ),
//           const SizedBox(height: 40),
//           _image == null
//               ? Container()
//               : const Text(
//                   'Scanning...',
//                   style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//                 )
//         ],
//       ),
//     )