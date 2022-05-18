// import 'dart:io';

// import 'package:dory/components/dory_constants.dart';
// import 'package:dory/models/medicine_alarm.dart';
// import 'package:flutter/material.dart';

// class ImageDetailPage extends StatefulWidget {
//   const ImageDetailPage({
//     Key? key,
//     required this.imagePath,
//   }) : super(key: key);

//   final String imagePath;

//   @override
//   State<ImageDetailPage> createState() => _ImageDetailPageState();
// }

// @override
// class _ImageDetailPageState extends State<ImageDetailPage> {
// // 여기다 추갛마
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         leading: const CloseButton(),
//       ),
//       body: Column(
//         children: [
//           const Text(
//             '경과작성 페이지',
//             style: TextStyle(
//               fontSize: 20,
//             ),
//           ),
//           SizedBox(
//             width: 400,
//             height: 200,
//             child: SafeArea(
//               child: Center(
//                 child: Image.file(
//                   File(widget.imagePath),
//                 ),
//               ),
//             ),
//           ),
//           SafeArea(
//             child: Expanded(
//               flex: 1,
//               child: TextFormField(

//                   // controller:
//                   maxLength: 50,
//                   keyboardType: TextInputType.text,
//                   textInputAction: TextInputAction.done,
//                   textAlign: TextAlign.center,
//                   style: Theme.of(context).textTheme.bodyText1,
//                   decoration: InputDecoration(
//                     hintMaxLines: 100,
//                     border: const OutlineInputBorder(
//                       borderRadius: BorderRadius.all(Radius.circular(10.0)),
//                     ),
//                     focusedBorder: const OutlineInputBorder(
//                       borderRadius: BorderRadius.all(Radius.circular(10.0)),
//                       borderSide: BorderSide(
//                           width: 3, color: Color.fromARGB(255, 153, 198, 240)),
//                     ),
//                     hintText: '복용 후 경과를 작성해서 건강관리 도전하세요🖊',
//                     hintStyle: Theme.of(context).textTheme.bodyText2,
//                   )),
//             ),
//           ),
//           SizedBox(
//             width: 200,
//             child: ElevatedButton(
//               style: ElevatedButton.styleFrom(
//                   shape: RoundedRectangleBorder(
//                       // shape : 버튼의 모양을 디자인 하는 기능
//                       borderRadius: BorderRadius.circular(10.0)),
//                   primary: Colors.blue),
//               onPressed: () {},
//               child: const Text(
//                 "경과저장",
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'dart:io';

import 'package:flutter/material.dart';

class ImageDetailPage extends StatelessWidget {
  const ImageDetailPage({
    Key? key,
    required this.imagePath,
  }) : super(key: key);

  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const CloseButton(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Image.file(
                File(imagePath),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 10.0),
              child: TextField(
                decoration: InputDecoration(
                  labelText: '경과작성',
                  hintText: '복용 후 경과를 적어보세요!',
                  labelStyle: TextStyle(color: Colors.blueAccent),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    borderSide: BorderSide(width: 1, color: Colors.blueAccent),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    borderSide: BorderSide(width: 1, color: Colors.blueAccent),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                ),
                keyboardType: TextInputType.emailAddress,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
