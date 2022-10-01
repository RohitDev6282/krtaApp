import 'package:flutter/material.dart';
import 'package:kartaa_app/constant/constant.dart';

class BookListWidget extends StatefulWidget {
  final String name;
  final String subtitle;
  final String images;
  final String title1;
  final String subtitle1;
  final String time;
  var call;
  final String status;
  final VoidCallback ontap1;

  BookListWidget(
      {Key? key,
      required this.ontap1,
      required this.status,
      required this.time,
      required this.name,
      required this.title1,
      required this.subtitle,
      required this.images,
      required this.subtitle1,
      this.call})
      : super(key: key);

  @override
  State<BookListWidget> createState() => _BookListWidgetState();
}

class _BookListWidgetState extends State<BookListWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Container(
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    widget.name,
                    style: kBMTSl,
                  ),
                  const Spacer(),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: kGreyColor),
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text(
                        widget.status,
                        style: kWhiteSmlTextStyle,
                      ),
                    ),
                  )
                ],
              ),
              Text(
                widget.subtitle,
                style: kBSTSl,
              ),
              ListTile(
                leading: CircleAvatar(
                    backgroundColor: kLPcolor,
                    radius: 25,
                    child: ClipOval(child: Image.asset(widget.images))),
                title: Row(
                  children: [
                    Text(
                      widget.title1,
                      style: kBMTSl,
                    ),
                    const Spacer(),
                    Text(
                      widget.time,
                      style: kBSTSl,
                    )
                  ],
                ),
                subtitle: Text(
                  widget.subtitle1,
                  style: kPCTStyle,
                ),
              ),
              Column(
                children: [
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        kWhiteColor),
                                padding: MaterialStateProperty.all<EdgeInsets>(
                                    const EdgeInsets.all(5)),
                                foregroundColor:
                                    MaterialStateProperty.all<Color>(kPColor),
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(18.0),
                                        side:
                                            const BorderSide(color: kPColor)))),
                            onPressed: widget.call,
                            child: Row(
                              children: const [
                                Icon(
                                  Icons.call,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Call",
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                              ],
                            )),
                        const SizedBox(
                          width: 150,
                        ),
                        ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        kWhiteColor),
                                padding: MaterialStateProperty.all<EdgeInsets>(
                                    const EdgeInsets.all(5)),
                                foregroundColor:
                                    MaterialStateProperty.all<Color>(kPColor),
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(18.0),
                                        side:
                                            const BorderSide(color: kPColor)))),
                            onPressed: widget.call,
                            child: Row(
                              children: const [
                                Icon(Icons.message),
                                SizedBox(
                                  width: 5,
                                ),
                                Text("Message")
                              ],
                            ))
                      ],
                    ),
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          side: const BorderSide(
                            color: kPColor,
                          ),
                          primary: kLPcolor,
                          fixedSize: const Size(330, 35),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50))),
                      onPressed: () {
                        widget.ontap1;
                      },
                      child: const Text("Book Again", style: kLargeTextStyle))
                ],
              ),
            ],
          ),
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: kLightGreyColor, width: 1.5),
        ),
      ),
    );
  }
}
