import 'package:flutter/material.dart';
import 'package:kartaa_app/constant/constant.dart';
import 'package:kartaa_app/view/homepage/booking_page/booked_order.dart';
import 'package:kartaa_app/view/homepage/booking_page/booking.dart';

class ServiceBooking extends StatefulWidget {
  const ServiceBooking({Key? key}) : super(key: key);

  @override
  State<ServiceBooking> createState() => _ServiceBookingState();
}

class _ServiceBookingState extends State<ServiceBooking>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    final TabController _tabController = TabController(length: 2, vsync: this);
    return Scaffold(
      appBar: AppBar(
          backgroundColor: const Color(0xffFC7F03),
          title: const Text(
            "Order Detail",
            style: kWhiteLrgTextStyle,
          )),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: ListView(
            children: [
              // const SizedBox(
              //   height: 15,
              // ),
              // const Text(
              //   "Order Detail",
              //   style: kBLTSl,
              // ),
              const SizedBox(
                height: 15,
              ),
              Container(
                color: kLightGreyColor,
                height: 50,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TabBar(
                      // mouseCursor: SystemMouseCursors.noDrop,
                      physics: const ScrollPhysics(
                          parent: AlwaysScrollableScrollPhysics()),
                      unselectedLabelStyle: kBSTSl,
                      labelPadding: const EdgeInsets.all(5),
                      controller: _tabController,
                      indicator: const BoxDecoration(
                        color: kPColor,
                      ),
                      labelColor: Colors.white,
                      unselectedLabelColor: kBlClr,
                      tabs: const [
                        Tab(
                          height: 40,
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              "Order",
                            ),
                          ),
                        ),
                        Tab(
                          height: 40,
                          child: Align(
                            alignment: Alignment.center,
                            child: Text("Booking History"),
                          ),
                        ),
                      ]),
                ),
              ),
              SizedBox(
                width: double.maxFinite,
                height: MediaQuery.of(context).size.height * 0.83,
                child: TabBarView(controller: _tabController, children: const [
                  BookingService(),
                  OrderBooked(),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
