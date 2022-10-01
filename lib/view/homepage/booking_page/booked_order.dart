import 'package:flutter/material.dart';
import 'package:kartaa_app/model/booking_modal/book_history.dart';
import 'package:kartaa_app/widget/booking_list_widget.dart';
import 'package:url_launcher/url_launcher.dart';

class OrderBooked extends StatefulWidget {
  const OrderBooked({Key? key}) : super(key: key);

  @override
  State<OrderBooked> createState() => _OrderBookedState();
}

class _OrderBookedState extends State<OrderBooked> {
  void _makePhoneCall(String _url) async {
    if (!await launch(_url)) throw 'Could not launch $_url';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
            itemCount: historyBooking.length,
            itemBuilder: (context, index) {
              return BookListWidget(
                call: () {
                  _makePhoneCall("tel:" + historyBooking[index].mobile);
                },
                name: historyBooking[index].name,
                subtitle: historyBooking[index].subtitle,
                images: historyBooking[index].image,
                title1: historyBooking[index].title1,
                time: historyBooking[index].time,
                subtitle1: historyBooking[index].subtitle1,
                status: 'Completed',
                ontap1: () {},
              );
            }));
  }
}
