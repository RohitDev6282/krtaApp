import 'package:flutter/material.dart';
import 'package:kartaa_app/constant/constant.dart';
import 'package:kartaa_app/model/service_category/category_list.dart';
import 'package:kartaa_app/view/schedule_page/schedule_page.dart';

class CategoryList extends StatefulWidget {
  const CategoryList({Key? key}) : super(key: key);

  @override
  State<CategoryList> createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  int _itemCount = 1;
  bool _expanded = false;
  String total = " 0";

  final TextEditingController _messageController = TextEditingController();
  final List<String> iconList = ["1 Ton", "1.5Ton", "2 Ton", "3 Ton", "6 Ton"];
  List<bool> isSelected = [false, false, false, false, false];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: kWhiteColor, //change your color here
        ),
        title: const Text(
          "Shifting",
          style: kWhiteLrgTextStyle,
        ),
      ),
      body: SafeArea(
        child: ListView.builder(
            itemCount: categoryList.length,
            itemBuilder: ((context, index) {
              return Padding(
                padding: const EdgeInsets.all(2.0),
                child: Card(
                  shadowColor: kGreyColor,
                  elevation: 3,
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: ListTile(
                      onTap: () {
                        
                        showModalBottomSheet(
                            isScrollControlled: true,
                            backgroundColor: Colors.transparent,
                            context: context,
                            builder: (context) {
                              return StatefulBuilder(builder:
                                  (BuildContext context,
                                      StateSetter
                                          setState /*You can rename this!*/) {
                                return SizedBox(
                                  height: 520,
                                  child: Column(
                                    children: [
                                      SizedBox(
                                          child: Center(
                                              child: Padding(
                                        padding:
                                            const EdgeInsets.only(bottom: 8.0),
                                        child: CircleAvatar(
                                            backgroundColor: Colors.black,
                                            child: IconButton(
                                              onPressed: () {
                                                Navigator.pop(context);
                                              },
                                              icon: const Icon(
                                                Icons.close,
                                                color: Colors.white,
                                              ),
                                            )),
                                      ))),
                                      Container(
                                        decoration: const BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(20),
                                              topRight: Radius.circular(20),
                                            )),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            const SizedBox(
                                              height: 30,
                                            ),
                                            ListTile(
                                              leading: Container(
                                                  decoration: BoxDecoration(
                                                      color: kPColor,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              16)),
                                                  child: Image.asset(
                                                    categoryList[index].image,
                                                    fit: BoxFit.cover,
                                                  )),
                                              title: const Text(
                                                  "Ac Servicing yearly",
                                                  style: kBMTSl),
                                              subtitle: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                      categoryList[index]
                                                          .subtitle,
                                                      textAlign: TextAlign.left,
                                                      style: const TextStyle(
                                                          color: Colors.black54,
                                                          fontWeight:
                                                              FontWeight.bold)),
                                                  const SizedBox(
                                                    height: 15,
                                                  ),
                                                ],
                                              ),
                                            ),
                                            const Padding(
                                              padding: EdgeInsets.fromLTRB(
                                                  10, 20, 10, 5),
                                              child: Text(
                                                "Select Tone",
                                                style: kBMTSl,
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.fromLTRB(
                                                      12, 8, 12, 8),
                                              child: SizedBox(
                                                width: 350,
                                                height: 30,
                                                child: GridView.count(
                                                  primary: true,
                                                  crossAxisCount:
                                                      5, //set the number of buttons in a row
                                                  crossAxisSpacing:
                                                      10, //set the spacing between the buttons
                                                  childAspectRatio:
                                                      2.5, //set the width-to-height ratio of the button,
                                                  //>1 is a horizontal rectangle
                                                  children: List.generate(
                                                      isSelected.length,
                                                      (index) {
                                                    //using Inkwell widget to create a button
                                                    return InkWell(
                                                        //the default splashColor is grey
                                                        onTap: () {
                                                          //set the toggle logic
                                                          setState(() {
                                                            for (int indexBtn =
                                                                    0;
                                                                indexBtn <
                                                                    isSelected
                                                                        .length;
                                                                indexBtn++) {
                                                              if (indexBtn ==
                                                                  index) {
                                                                isSelected[
                                                                        indexBtn] =
                                                                    true;
                                                              } else {
                                                                isSelected[
                                                                        indexBtn] =
                                                                    false;
                                                              }
                                                            }
                                                          });
                                                        },
                                                        child: Container(
                                                          decoration:
                                                              BoxDecoration(
                                                                  //set the background color of the button when it is selected/ not selected
                                                                  color: isSelected[
                                                                          index]
                                                                      ? kPColor
                                                                      : Colors
                                                                          .white,
                                                                  // here is where we set the rounded corner
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              12),
                                                                  //don't forget to set the border,
                                                                  //otherwise there will be no rounded corner

                                                                  border: Border
                                                                      .all(
                                                                          color:
                                                                              kPColor)),
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                        .fromLTRB(
                                                                    8, 4, 8, 4),
                                                            child: Text(
                                                              iconList[index],
                                                              style: TextStyle(
                                                                  color: isSelected[
                                                                          index]
                                                                      ? kWhiteColor
                                                                      : kGreyColor,
                                                                  fontSize: 12),
                                                            ),
                                                          ),
                                                          //set the color of the icon when it is selected/ not selected
                                                        ));
                                                  }),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Row(
                                                children: [
                                                  RichText(
                                                    text: TextSpan(
                                                        text: '\u{20B9}' +
                                                            categoryList[index]
                                                                .price,
                                                        style: const TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 16),
                                                        children: const <
                                                            TextSpan>[
                                                          TextSpan(
                                                              text: " / Unit",
                                                              style: TextStyle(
                                                                  color:
                                                                      kPColor,
                                                                  fontSize: 16))
                                                        ]),
                                                  ),
                                                  const Spacer(),
                                                  Container(
                                                    height: 38,
                                                    decoration: BoxDecoration(
                                                      border: Border.all(
                                                          color: const Color(
                                                              0xffe0e0e0)),
                                                    ),
                                                    child: FittedBox(
                                                      child: Row(
                                                        children: [
                                                          IconButton(
                                                              icon: const Icon(
                                                                Icons.remove,
                                                                size: 14,
                                                              ),
                                                              onPressed: () {
                                                                setState(() {
                                                                  _itemCount--;
                                                                });
                                                              }),
                                                          Text(
                                                            _itemCount
                                                                .toString(),
                                                            style:
                                                                const TextStyle(
                                                                    fontSize:
                                                                        16),
                                                          ),
                                                          IconButton(
                                                            icon: const Icon(
                                                              Icons.add,
                                                              size: 14,
                                                            ),
                                                            onPressed: () =>
                                                                setState(() =>
                                                                    _itemCount++),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  const Divider(
                                                    thickness: 2,
                                                  ),

                                                  // Text("\u{20B9}" +
                                                  //     categoryList[index].price)
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Row(
                                                children: [
                                                  Container(
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(12),
                                                        color: kLPcolor),
                                                    child: const Padding(
                                                      padding:
                                                          EdgeInsets.all(8.0),
                                                      child: Icon(
                                                        Icons.add,
                                                        color: kPColor,
                                                      ),
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    width: 20,
                                                  ),
                                                  const Text(
                                                      "Add More Services",
                                                      style: kPCTStyle)
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Container(
                                                height: 100,
                                                color: kLightGreyColor,
                                                child: TextFormField(
                                                  obscureText: true,
                                                  decoration:
                                                      const InputDecoration(
                                                    contentPadding:
                                                        EdgeInsets.only(
                                                            left: 15,
                                                            bottom: 11,
                                                            top: 11,
                                                            right: 15),
                                                    border: InputBorder.none,
                                                    focusedBorder:
                                                        InputBorder.none,
                                                    enabledBorder:
                                                        InputBorder.none,
                                                    errorBorder:
                                                        InputBorder.none,
                                                    disabledBorder:
                                                        InputBorder.none,
                                                    labelText:
                                                        'Give short meeage.',
                                                    labelStyle:
                                                        TextStyle(fontSize: 15),
                                                  ),
                                                  controller:
                                                      _messageController,
                                                  validator: (value) {
                                                    if (value!.isEmpty) {
                                                      return 'Name is Required';
                                                    }
                                                    if (value.length < 2) {
                                                      return "Name must be more than one character.";
                                                    } else {}
                                                    return null;
                                                  },
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.fromLTRB(
                                                      12, 8, 12, 8),
                                              child: Row(
                                                children: [
                                                  Column(
                                                    children: [
                                                      const Text(
                                                        "Total",
                                                        style: kBSTSl,
                                                      ),
                                                      const SizedBox(
                                                        height: 5,
                                                      ),
                                                      Text(
                                                        total,
                                                        style: kBMTSl,
                                                      )
                                                    ],
                                                  ),
                                                  const Spacer(),
                                                  SizedBox(
                                                    height: 45,
                                                    child: FittedBox(
                                                      child: TextButton(
                                                        style: ButtonStyle(
                                                            foregroundColor:
                                                                MaterialStateProperty.all<
                                                                        Color>(
                                                                    Colors
                                                                        .white),
                                                            backgroundColor:
                                                                MaterialStateProperty
                                                                    .all<Color>(
                                                                        kPColor),
                                                            shape: MaterialStateProperty.all<
                                                                    RoundedRectangleBorder>(
                                                                RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          4),
                                                            ))),
                                                        onPressed: () {
                                                          Navigator.pushReplacement(
                                                              context,
                                                              MaterialPageRoute(
                                                                  builder:
                                                                      (context) =>
                                                                          const SchedulePage()));
                                                        },
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                      .only(
                                                                  left: 5,
                                                                  right: 5),
                                                          child: Row(
                                                            children: const [
                                                              Text(
                                                                "Proceed",
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        16),
                                                              ),
                                                              Icon(Icons
                                                                  .arrow_right)
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              });
                            });
                      },
                      leading: Container(
                          decoration: BoxDecoration(
                              color: kPColor,
                              borderRadius: BorderRadius.circular(12)),
                          child: Image.asset(
                            categoryList[index].image,
                          )),
                      title: const Text("Ac Servicing yearly", style: kBMTSl),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(categoryList[index].subtitle,
                              textAlign: TextAlign.left,
                              style: const TextStyle(
                                  color: Colors.black54,
                                  fontWeight: FontWeight.bold)),
                          const SizedBox(
                            height: 15,
                          ),
                          Text(
                            "Starting From: \u{20B9} 22" +
                                categoryList[index].price,
                            style: kXlPAtStyle,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            })),
      ),
    );
  }
}
