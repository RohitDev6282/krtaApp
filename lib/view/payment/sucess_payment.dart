import 'package:flutter/material.dart';
import 'package:kartaa_app/constant/constant.dart';
import 'package:kartaa_app/view/homepage.dart';

class PaymentSuccess extends StatefulWidget {
  const PaymentSuccess({Key? key}) : super(key: key);

  @override
  State<PaymentSuccess> createState() => _PaymentSuccessState();
}

class _PaymentSuccessState extends State<PaymentSuccess> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Container(
          child: Image.asset(
            "assets/images/paymentSucessfull.gif",
            height: MediaQuery.of(context).size.height * 0.9,
            fit: BoxFit.cover,
          ),
        ),
        ElevatedButton(
            onPressed: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => const HomePage()));
            },
            child: const Text(
              "Return To Home",
              style: kWhiteLrgTextStyle,
            ))
      ],
    ));
  }
}
