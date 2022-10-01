import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:http/http.dart' as http;
import 'package:kartaa_app/constant/app_size.dart';
import 'package:kartaa_app/constant/constant.dart';
import 'package:kartaa_app/model/service_category/category.dart';
import 'package:kartaa_app/view/category_list/category_list.dart';
import 'package:kartaa_app/view/homepage/drawer/drawer.dart';
import 'package:kartaa_app/view/homepage/service_booking.dart';
import 'package:kartaa_app/view/notification/notification.dart';
import 'package:kartaa_app/view/search/search_page.dart';
import 'package:kartaa_app/widget/horizontal_list.dart';
import 'package:kartaa_app/widget/search_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget _currentPage = const HomePage();
  final tabs = [
    const HomeBody(),
    const ServiceBooking(),
    // const UserProfile(),
    const SearchPage(),
    const NotificationPage(),
  ];

  int _selectedIndex = 0;
  void _selectTab(Widget tabItem, int index) {
    setState(() {
      _currentPage = tabs[index];
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: PreferredSize(child: appBar(left: ), preferredSize: Size.fromHeight(100)),
      body: tabs[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.grey[500],
        selectedLabelStyle: const TextStyle(fontSize: 12),
        unselectedFontSize: 10,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home, size: 25),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book_online, size: 25),
            label: 'Booking',
          ),
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.menu, size: 25),
          //   label: 'Menu',
          // ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search, size: 25),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications, size: 25),
            label: 'Notification',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: kPColor,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        onTap: (int index) {
          _selectTab(tabs[index], index);
        },
      ),
    );
  }
}

class HomeBody extends StatefulWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  List<Color> colors = [
    const Color(0xffCCFFFF),
    const Color(0xffFFE5CC),
    const Color(0xffE5FFCC),
    const Color(0xffCCFFFF),
    const Color(0xffCCCCFF),
    const Color(0xffE5CCFF),
    const Color(0xffCCFFFF),
    const Color(0xffCCFFFF),
  ];
  int _selectedIndex = 0;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  String location = "";
  String address = 'search';

  Future<Position> _determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return Future.error('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }

    return await Geolocator.getCurrentPosition();
  }

  Future<void> getAddressFromLatLong(Position position) async {
    List<Placemark> placemark =
        await placemarkFromCoordinates(position.latitude, position.longitude);

    Placemark place = placemark[0];
    address = '${place.street}';

    // '${place.street},${place.country},${place.subLocality},
    // setState(() {});
  }

  Future fetchlocation(
    String longitutde,
    String latitude,
  ) async {
    Map data = {
      'latitide': latitude,
      'longitude': longitutde,
    };
    var queryUri = "https://quickplayers.com/api/fetech-location.php";
    final response = await http.post(Uri.parse(queryUri), body: data);
    if (response.statusCode == 200) {
      final address = jsonDecode(response.body);

      return address;
    } else {
      throw Exception('Failed to load data from API');
    }
  }

  @override
  void initState() {
    super.initState();
    getAddress();
  }

  Future getAddress() async {
    Position position = await _determinePosition();
    location = 'Lat:${position.latitude}, Long:${position.longitude}';
    getAddressFromLatLong(position);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: PreferredSize(child: appBar(left: ), preferredSize: Size.fromHeight(100)),
      body: SafeArea(
        child: ListView(
          children: [
            Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.width * 0.38,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color(0xFFfc4a1a),
                        Color(0xFFfc4a1a),
                        Color(0xFFfd6b12),
                        Color(0xFFfc8712),
                        Color(0xFFfaa01f),
                        Color(0xFFf7b733),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(AppSize.pagePadding),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const Icon(
                            Icons.location_on,
                            size: 30,
                            color: kWhiteColor,
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Text(
                            address,
                            style: kWhiteMdmTextStyle,
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "Welcome",
                        style: kWtXtaTstSte,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "Where are you going Next",
                        style: kWhiteMdmTextStyle,
                      ),
                      SearchWidget(
                        text: address,
                        onChanged: (String value) {},
                        hintText: ('Search for Service'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              children: <Widget>[
                SizedBox(
                  height: 80,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemCount: servicecategory.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const CategoryList()));
                            },
                            child: Column(
                              children: [
                                CircleAvatar(
                                  backgroundColor: colors[index],
                                  radius: 25,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(24),
                                    child: ColorFiltered(
                                      child: Image.asset(
                                        servicecategory[index].image,
                                        height: 40,
                                        width: 40,
                                        fit: BoxFit.cover,
                                      ),
                                      colorFilter: ColorFilter.mode(
                                          colors[index], BlendMode.color),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  servicecategory[index].servicename,
                                  style: kBSTSl,
                                )
                              ],
                            ),
                          ),
                        );
                      }),
                ),
                HorizontalList(text: "Featured Services"),
                HorizontalList(text: "Most Popular Services"),
                // TextButton(
                //   onPressed: () async {
                //     Position position = await _determinePosition();

                //     location =
                //         'Lat:${position.latitude}, Long:${position.longitude}';
                //     print(location);
                //   },
                //   child: Text(
                //     "location+$address ",
                //   ),
                // ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(
          Icons.add,
          color: kWhiteColor,
        ),
        backgroundColor: kPColor,
        onPressed: () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => SideBar())),
      ),
    );
  }
}
