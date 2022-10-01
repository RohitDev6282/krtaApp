import 'package:flutter/material.dart';
import 'package:kartaa_app/constant/constant.dart';
import 'package:kartaa_app/model/services_model.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({Key? key}) : super(key: key);

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  bool isExpanded = false;
  bool _customTileExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: <Widget>[
        Stack(
          children: [
            CustomPaint(size: Size(260, 120), painter: DrawTriangle()),
            Column(
              children: [
                Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                        )),
                  ],
                ),
                const SizedBox(height: 50),
                CircleAvatar(
                  backgroundColor: Colors.deepPurple[200],
                  radius: 70,
                  child: ClipOval(
                    child: Image.asset(
                      'assets/images/profile.jpeg',
                      height: 135,
                      width: 135,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        const SizedBox(height: 5),
        Column(
          children: const [
            Text(
              "Sanjay Singh",
              style: kBMTSl,
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "sanjay123@gmail.com",
              style: kBMTSl,
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "Mobile No = 9939233xx2",
              style: kBMTSl,
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Expanded(
          child: Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 10.0,
                ),
              ],
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30), topRight: Radius.circular(30)),
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(10, 15, 10, 12),
              child: Column(
                children: [
                  ListTile(
                    onTap: () {
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) => EditProfile()));
                    },
                    leading: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Colors.pink[100],
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Icon(
                        Icons.person,
                        color: Colors.pinkAccent[400],
                      ),
                    ),
                    trailing: const Icon(
                      Icons.keyboard_arrow_right_sharp,
                      size: 35,
                      color: Colors.black,
                    ),
                    title: const Text("Edit Profile", style: kBMTSl),
                  ),
                  const SizedBox(height: 20),
                  ListTile(
                    onTap: () {
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) => EditProfile()));
                    },
                    leading: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Colors.orange[100],
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: const Icon(
                        Icons.person,
                        color: kPColor,
                      ),
                    ),
                    trailing: const Icon(
                      Icons.keyboard_arrow_right_sharp,
                      size: 35,
                      color: kBlClr,
                    ),
                    title: const Text(
                      "My Booking",
                      style: kBMTSl,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Theme(
                    data: Theme.of(context)
                        .copyWith(dividerColor: Colors.transparent),
                    child: ExpansionTile(
                      leading: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: Colors.red[100],
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Icon(
                          Icons.favorite,
                          color: Colors.red[300],
                        ),
                      ),

                      // trailing: Icon(
                      //   Icons.arrow_forward_ios,color: Colors.black,
                      //   size: 22,
                      // ),
                      title: const Text(
                        "Favourites",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Colors.black),
                      ),

                      trailing: Icon(
                        _customTileExpanded
                            ? Icons.keyboard_arrow_down_sharp
                            : Icons.keyboard_arrow_right_sharp,
                        size: 35,
                        color: Colors.black,
                      ),

                      //  onExpansionChanged: (bool expanded) {
                      // setState(() => _customTileExpanded = expanded);

                      children: [
                        const SizedBox(height: 20),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.28,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: ourServices.length,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding:
                                    const EdgeInsets.only(left: 25, right: 2),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(
                                            color:
                                                Colors.grey.withOpacity(0.25),
                                            spreadRadius: 3,
                                            blurRadius: 3,
                                            offset: Offset(0,
                                                0), // changes position of shadow
                                          ),
                                        ],
                                      ),
                                      child: ClipRRect(
                                        child: Image.asset(
                                          ourServices[index].image,
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.15,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.25,
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 5),

                                    // ignore: avoid_unnecessary_containers
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          0.2,
                                      height: 35,
                                      child: Text(
                                        ourServices[index].service_name,
                                        maxLines: 2,
                                        textAlign: TextAlign.start,
                                        style: const TextStyle(
                                          fontSize: 12.0,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                    Row(
                                      children: const [
                                        Text(
                                          "500ml",
                                          style: TextStyle(fontSize: 12),
                                        ),
                                        SizedBox(
                                          width: 30,
                                        ),
                                        Text(
                                          "\$200",
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500),
                                        )
                                      ],
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          height: 35,
                                          child: FittedBox(
                                            child: MaterialButton(
                                              color: kPColor,
                                              onPressed: () {},
                                              child: const Padding(
                                                padding: EdgeInsets.only(
                                                    left: 35, right: 35),
                                                child: Text(
                                                  "Add",
                                                  style: TextStyle(
                                                      fontSize: 14,
                                                      color: Colors.white),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                      onExpansionChanged: (bool expanded) {
                        setState(() => _customTileExpanded = expanded);
                      },
                    ),
                  ),
                  const SizedBox(height: 20),
                  ListTile(
                    leading: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Colors.black12,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: const Icon(
                        Icons.help,
                        color: Colors.black,
                      ),
                    ),
                    trailing: const Icon(
                      Icons.keyboard_arrow_right_sharp,
                      size: 35,
                      color: Colors.black,
                    ),
                    title: const Text(
                      "Help",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                  ),
                  const SizedBox(height: 10)
                ],
              ),
            ),
          ),
        )
      ]),
    );
  }
}

class DrawTriangle extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var path = Path();
    path.moveTo(size.width * 1.95, 0);

    path.lineTo(0, size.height * 0);
    path.lineTo(0, size.width * 0.265);

    path.lineTo(190, 200);
    path.close();
    canvas.drawPath(path, Paint()..color = kPColor);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
