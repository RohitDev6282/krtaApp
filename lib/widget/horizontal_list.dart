import 'package:flutter/material.dart';
import 'package:kartaa_app/constant/constant.dart';
import 'package:kartaa_app/model/services_model.dart';
import 'package:kartaa_app/view/homepage/view_all.dart';

class HorizontalList extends StatelessWidget {
  String text;

  HorizontalList({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(12, 5, 12, 5),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                text,
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                    letterSpacing: 1.5,
                    color: Colors.grey[800]),
              ),
              const Spacer(),
              SizedBox(
                height: 40,
                child: FittedBox(
                  child: TextButton(
                    style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                        backgroundColor:
                            MaterialStateProperty.all<Color>(kPColor),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4),
                        ))),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ViewAllService()));
                    },
                    child: const Padding(
                      padding: EdgeInsets.only(left: 8, right: 8),
                      child: Text(
                        " View all",
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 3,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.23,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: ourServices.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 2, right: 2),
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.25),
                              spreadRadius: 3,
                              blurRadius: 3,
                              offset:
                                  Offset(0, 0), // changes position of shadow
                            ),
                          ],
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.asset(
                            ourServices[index].image,
                            height: MediaQuery.of(context).size.height * 0.20,
                            width: MediaQuery.of(context).size.width * 0.31,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),

                      // ignore: avoid_unnecessary_containers
                      Padding(
                        padding: const EdgeInsets.fromLTRB(8, 5, 8, 0),
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.3,
                          child: Text(
                            ourServices[index].service_name,
                            maxLines: 2,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontSize: 12.0,
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
