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
      body: Column(
        children: [
          Center(
            child: Image.file(
              File(imagePath),
            ),
          ),

          const SizedBox(
            height: 40,
          ),
          // 추가

          TextFormField(
              maxLength: 50,
              keyboardType: TextInputType.text,
              textInputAction: TextInputAction.done,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyText1,
              decoration: InputDecoration(
                hintMaxLines: 100,
                contentPadding: const EdgeInsets.symmetric(
                  vertical: 50.0,
                  horizontal: 30,
                ),
                border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
                focusedBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  borderSide: BorderSide(
                      width: 2, color: Color.fromARGB(255, 153, 198, 240)),
                ),
                hintText: '복용 후 경과를 작성해서 건강관리 기록하세요🖊',
                hintStyle: Theme.of(context).textTheme.bodyText2,
              )),
          SizedBox(
            width: 200,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      // shape : 버튼의 모양을 디자인 하는 기능
                      borderRadius: BorderRadius.circular(10.0)),
                  primary: Colors.blue),
              onPressed: () {},
              child: const Text(
                "경과저장",
              ),
            ),
          ),
        ],
      ),
    );
  }
}
