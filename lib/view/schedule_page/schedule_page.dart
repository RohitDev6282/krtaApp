import 'package:flutter/material.dart';
import 'package:kartaa_app/constant/app_size.dart';
import 'package:kartaa_app/constant/constant.dart';
import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:flutter_time_picker_spinner/flutter_time_picker_spinner.dart';
import 'package:kartaa_app/view/payment/sucess_payment.dart';

class SchedulePage extends StatefulWidget {
  const SchedulePage({Key? key, this.title}) : super(key: key);
  final String? title;

  @override
  State<SchedulePage> createState() => _SchedulePageState();
}

class _SchedulePageState extends State<SchedulePage> {
  DatePickerController _controller = DatePickerController();

  DateTime _selectedValue = DateTime.now();
  DateTime _dateTime = DateTime.now();
  String Address = "A-4/2,Sarvodya Enclave";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          iconTheme: const IconThemeData(
            color: kWhiteColor, //change your color here
          ),
          title: const Text(
            "Schedule Book",
            style: kWhiteLrgTextStyle,
          )),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(AppSize.pagePadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "When would you like your Service?",
                style: kBMTSl,
              ),
              const SizedBox(
                height: 15,
              ),
              dateSelect(),
              const Divider(
                thickness: 2,
              ),
              const SizedBox(
                height: 5,
              ),
              const Text(
                "At what time should the service provider arrive?",
                style: kBMTSl,
              ),
              hourMinute15Interval(),
              const Divider(
                thickness: 2,
              ),

              address(),

              const Spacer(),

              Row(
                children: [
                  Column(
                    children: const [
                      Text(
                        "Total",
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        '\u{20B9}' "200",
                        style: kBLTSl,
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
                                MaterialStateProperty.all<Color>(Colors.white),
                            backgroundColor:
                                MaterialStateProperty.all<Color>(kPColor),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4),
                            ))),
                        onPressed: () {
                          showModalBottomSheet(
                              enableDrag: true,
                              backgroundColor: Colors.transparent,
                              context: context,
                              builder: (context) {
                                return StatefulBuilder(builder:
                                    (BuildContext context,
                                        StateSetter
                                            setState /*You can rename this!*/) {
                                  return Container(
                                    height: 250,
                                    decoration: const BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(32),
                                          topRight: Radius.circular(32),
                                        )),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const SizedBox(
                                          height: 15,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              12, 5, 12, 10),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              const Text("Ac Servicing yearly",
                                                  style: kBMTSl),
                                              const SizedBox(
                                                height: 5,
                                              ),
                                              Row(
                                                children: const [
                                                  Text(
                                                    "3 hours",
                                                    style: kBMTSl,
                                                  ),
                                                  Spacer(),
                                                  Text(
                                                    '\u{20B9}' "200",
                                                    style: kBMTSl,
                                                  ),
                                                ],
                                              ),
                                              const SizedBox(
                                                height: 5,
                                              ),
                                              Row(
                                                children: const [
                                                  SizedBox(
                                                    height: 10,
                                                  ),
                                                  Text("Discount"),
                                                  Spacer(),
                                                  Text("- "
                                                      '\u{20B9}'
                                                      "20"),
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                        const Divider(
                                          height: 1,
                                          thickness: 2,
                                        ),
                                        Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: Row(
                                            children: const [
                                              Text(
                                                'Total',
                                                style: kXlPAtStyle,
                                              ),
                                              Spacer(),
                                              Text(
                                                '\u{20B9}' "180",
                                                style: kXlPAtStyle,
                                              ),

                                              Divider(
                                                thickness: 2,
                                              ),

                                              // Text("\u{20B9}" +
                                              //     categoryList[index].price)
                                            ],
                                          ),
                                        ),
                                        Center(
                                          child: Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                12, 8, 12, 8),
                                            child: SizedBox(
                                              height: 45,
                                              child: FittedBox(
                                                child: TextButton(
                                                  style: ButtonStyle(
                                                      foregroundColor:
                                                          MaterialStateProperty
                                                              .all<Color>(
                                                                  Colors.white),
                                                      backgroundColor:
                                                          MaterialStateProperty
                                                              .all<Color>(
                                                                  kPColor),
                                                      shape: MaterialStateProperty.all<
                                                              RoundedRectangleBorder>(
                                                          RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(4),
                                                      ))),
                                                  onPressed: () {
                                                    Navigator.pushReplacement(
                                                        context,
                                                        MaterialPageRoute(
                                                            builder: (context) =>
                                                                const PaymentSuccess()));
                                                  },
                                                  child: const Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 5, right: 5),
                                                    child: Text(
                                                      "Proceed To Pay",
                                                      style: TextStyle(
                                                          fontSize: 16),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  );
                                });
                              });
                        },
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => const SchedulePage()));

                        child: Padding(
                          padding: const EdgeInsets.only(left: 5, right: 5),
                          child: Row(
                            children: const [
                              Text(
                                "CheckOut ",
                                style: TextStyle(fontSize: 16),
                              ),
                              Icon(Icons.arrow_right)
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              // hourMinute12HCustomStyle(),
              // Container(
              //   margin: EdgeInsets.symmetric(vertical: 50),
              //   child: Text(
              //     _dateTime.hour.toString().padLeft(2, '0') +
              //         ':' +
              //         _dateTime.minute.toString().padLeft(2, '0') +
              //         ':' +
              //         _dateTime.second.toString().padLeft(2, '0'),
              //     style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }

  // Date Select

  Widget dateSelect() {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: DatePicker(
        DateTime.now(),
        width: 60,
        height: 80,
        controller: _controller,
        initialSelectedDate: DateTime.now(),
        selectionColor: kPColor,
        selectedTextColor: Colors.white,
        inactiveDates: [
          DateTime.now().add(Duration(days: 3)),
          DateTime.now().add(Duration(days: 4)),
          DateTime.now().add(Duration(days: 7))
        ],
        onDateChange: (date) {
          // New date selected
          setState(() {
            _selectedValue = date;
          });
        },
      ),
    );
  }

  /// SAMPLE
  //

  Widget hourMinute15Interval() {
    return TimePickerSpinner(
      normalTextStyle: kBSTSl,
      highlightedTextStyle: kXlPAtStyle,
      is24HourMode: false,
      itemHeight: 30,
      spacing: 20,
      minutesInterval: 15,
      onTimeChange: (time) {
        setState(() {
          _dateTime = time;
        });
      },
    );
  }

  // Widget hourMinute12HCustomStyle() {
  //   return TimePickerSpinner(
  //     is24HourMode: false,
  //     normalTextStyle: TextStyle(fontSize: 24, color: Colors.deepOrange),
  //     highlightedTextStyle: TextStyle(fontSize: 24, color: Colors.yellow),
  //     spacing: 50,
  //     itemHeight: 80,
  //     isForce2Digits: true,
  //     minutesInterval: 15,
  //     onTimeChange: (time) {
  //       setState(() {
  //         _dateTime = time;
  //       });
  //     },
  //   );
  // }

  // Address Widget

  Widget address() {
    return Column(
      children: [
        ListTile(
          // isThreeLine: true,
          leading: const CircleAvatar(
            child: Icon(Icons.home),
          ),
          title: const Text("Address"),
          subtitle: Text(Address),
          trailing: TextButton(
            child: const Icon(Icons.edit),
            onPressed: () {},
          ),
        ),
        const ListTile(
          // isThreeLine: true,
          leading: CircleAvatar(
            child: Icon(Icons.gps_fixed),
          ),
          title: Text("Use Current Location"),
        )
      ],
    );
  }
}
