import 'package:flutter/material.dart';

// Colors in the app
const kLPcolor = Color(0xffF7E6D3);
const kPColor = Color(0xffFC7F03);
const kButtonColor = Color(0x8affffff);
const kTextColor = Color(0xffCAD5E2);
const kLightOrangeColor = Color(0xffffe0b2);
const kSearchBarColor = Color(0xffD6D6D6);
const kIconColor = Color(0xff7b1fa2);
const kLightGreyColor = Color(0xffe0e0e0);
const kWhiteColor = Color(0xffffffff);
const kGreyColor = Color(0xff9e9e9e);
const kBlClr = Color(0xff000000);

// All text Syle

const TextStyle kExtraSmallTextStyle = TextStyle(color: kPColor, fontSize: 6);
const TextStyle kSmallTextStyle = TextStyle(color: kPColor, fontSize: 8);
const TextStyle kMediumTextStyle = TextStyle(color: kPColor, fontSize: 12);
const TextStyle kExMediumTextStyle = TextStyle(color: kPColor, fontSize: 14);

const TextStyle kLargeTextStyle =
    TextStyle(color: kPColor, fontSize: 16, fontWeight: FontWeight.w500);

const TextStyle kXLargeTextStyle =
    TextStyle(color: kPColor, fontSize: 18, fontWeight: FontWeight.w500);

const TextStyle kWhiteSmlTextStyle =
    TextStyle(color: kWhiteColor, fontSize: 12);
const TextStyle kWhiteMdmTextStyle =
    TextStyle(color: kWhiteColor, fontSize: 14);

const TextStyle kWhiteLrgTextStyle = TextStyle(
  color: kWhiteColor,
  fontSize: 16,
);
const TextStyle kWtXtaTstSte = TextStyle(
  color: kWhiteColor,
  fontSize: 20,
);
const TextStyle kBSTSl = TextStyle(
  color: kBlClr,
  fontSize: 14,
);
const TextStyle kBMTSl = TextStyle(
  color: kBlClr,
  fontSize: 18,
);
const TextStyle kBLTSl =
    TextStyle(color: kBlClr, fontSize: 20, fontWeight: FontWeight.w500);
const TextStyle kBtXtaTstSte =
    TextStyle(color: kBlClr, fontSize: 22, fontWeight: FontWeight.w500);
const TextStyle kPCTStyle =
    TextStyle(color: kPColor, fontSize: 10, fontWeight: FontWeight.w500);
const TextStyle kLPCTStyle =
    TextStyle(color: kPColor, fontSize: 14, fontWeight: FontWeight.w500);
const TextStyle kXlPAtStyle =
    TextStyle(color: kPColor, fontSize: 18, fontWeight: FontWeight.w500);

const TextStyle kGLCAtStyle =
    TextStyle(color: kGreyColor, fontSize: 14, fontWeight: FontWeight.w500);

//black  000000 444444 666666 and similar variants

//grey grey 959595 E5E5E5 9C9C9C CFCECEgrey 959595 E5E5E5 9C9C9C CFCECE

// test style
const kTextWeight = FontWeight.bold;
const double kSmallText = 16.0;
const double kMediumText = 20.0;
const kTextStyle =
    TextStyle(color: Colors.black, fontSize: 27, fontWeight: FontWeight.w400);

// padding
const double kDefaultPadding = 15.0;

// display mediaquery size

Size displaySize(BuildContext context) {
  debugPrint('Size = ' + MediaQuery.of(context).size.toString());
  return MediaQuery.of(context).size;
}

double displayHeight(BuildContext context) {
  debugPrint('Height = ' + displaySize(context).height.toString());
  return displaySize(context).height;
}

double displayWidth(BuildContext context) {
  debugPrint('Width = ' + displaySize(context).width.toString());
  return displaySize(context).width;
}

// when no data get from the api

// const String SUCCESS_MESSAGE=" You will be contacted by us very soon.";
const String kNoimageFound = "assets/images/noImageFound.jpg";
const String kDataNotFond = "No data Found";
