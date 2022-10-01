import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:kartaa_app/constant/constant.dart';

Widget appBar({required Widget left, String? title, Widget? right}) {
  return Container(
      child: Padding(
    padding: const EdgeInsets.all(8),
    child: Row(children: [
      left,
      Text(
        '$title',
        style: kWhiteMdmTextStyle,
      ),
    ]),
  ));
}
