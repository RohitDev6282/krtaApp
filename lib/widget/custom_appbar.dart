import 'package:flutter/material.dart';
import 'package:kartaa_app/constant/constant.dart';

class CustomAppBar extends StatelessWidget {
  final String text;

  const CustomAppBar({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kPColor,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          children: [
            const SizedBox(
              width: 20,
            ),
            Text(text, style: kWhiteLrgTextStyle),
            const Spacer(),
            IconButton(
                onPressed: () {
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) => ProfileEditingPage()));
                },
                icon: Icon(
                  Icons.edit,
                  color: kWhiteColor,
                ))
          ],
        ),
      ),
    );
  }
}
