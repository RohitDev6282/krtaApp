import 'package:flutter/material.dart';
import 'package:kartaa_app/model/booking_modal/booking.dart';
import 'package:kartaa_app/widget/booking_list_widget.dart';
import 'package:url_launcher/url_launcher.dart';

class BookingService extends StatefulWidget {
  const BookingService({Key? key}) : super(key: key);

  @override
  State<BookingService> createState() => _BookingServiceState();
}

class _BookingServiceState extends State<BookingService> {
  void _makePhoneCall(String _url) async {
    if (!await launch(_url)) throw 'Could not launch $_url';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
            itemCount: bookingServices.length,
            itemBuilder: (context, index) {
              return BookListWidget(
                call: () {
                  _makePhoneCall("tel:" + bookingServices[index].mobile);
                },
                name: bookingServices[index].name,
                subtitle: bookingServices[index].subtitle,
                images: bookingServices[index].image,
                title1: bookingServices[index].title1,
                time: bookingServices[index].time,
                subtitle1: bookingServices[index].subtitle1,
                status: bookingServices[index].status,
                ontap1: () {},
              );
            }));
  }
}
