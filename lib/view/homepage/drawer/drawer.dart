import 'package:flutter/material.dart';
import 'package:kartaa_app/constant/constant.dart';
import 'package:share/share.dart';

class SideBar extends StatefulWidget {
  const SideBar({Key? key}) : super(key: key);

  @override
  State<SideBar> createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        // FutureBuilder(
        //     // future: _fetchUserProfile(),
        //     builder: (context, snapshot) {
        //   if (snapshot.hasData) {
        //     return ListView.builder(
        //         shrinkWrap: true,
        //         physics: const ScrollPhysics(),
        //         // itemCount: getUserData.length,
        //         itemBuilder: (BuildContext context, int index) {
        //           return UserAccountsDrawerHeader(
        //               decoration: const BoxDecoration(
        //                   // color: kDarkGreyColor,
        //                   ),
        //               arrowColor: kPColor,
        //               accountName: Text("No "),
        //               accountEmail: Text("getUserData[index].email"),
        //               currentAccountPictureSize: const Size.square(72.0),
        //               // : const Text("No user Found"),
        //               currentAccountPicture:
        //                   // finalPic != null
        //                   //     ?
        //                   GestureDetector(
        //                 onTap: () => Navigator.push(
        //                     context,
        //                     MaterialPageRoute(
        //                         builder: (context) => const ProfilePage())),
        //                 child: getUserData[index].profilePic != null
        //                     ? Container(
        //                         width: 70.0,
        //                         height: 70.0,
        //                         decoration: BoxDecoration(
        //                           image: DecorationImage(
        //                             image: NetworkImage(
        //                                 getUserData[index].profilePic),
        //                             fit: BoxFit.cover,
        //                           ),
        //                           borderRadius: const BorderRadius.all(
        //                               Radius.circular(50.0)),
        //                           border: Border.all(
        //                             color: Colors.white,
        //                             width: 1.0,
        //                           ),
        //                         ),
        //                       )
        //                     : Image.asset(kNoimageFound),
        //               ));
        //         });
        //   } else if (snapshot.hasError) {
        //     return Container(
        //       color: kGreyColor,
        //       height: 150,
        //       child: const Center(
        //         child: Text(
        //           "Not user logged In",
        //           style: kLargeTextStyle,
        //         ),
        //       ),
        //     );
        //   } else {
        //     return const SizedBox(
        //         height: 200, child: Center(child: CircularProgressIndicator()));
        //   }
        // }),

        createDrawerBodyItem(
            icon: Icons.contact_mail,
            text: 'Contact Us',
            onTap: () {
              // Navigator.push(context,
              //     MaterialPageRoute(builder: (context) => const ProfilePage()));
            }),
        createDrawerBodyItem(
            icon: Icons.question_answer,
            text: 'FAQs',
            onTap: () {
              // Navigator.push(context,
              // MaterialPageRoute(builder: (context) => const Faqs()));
            }),
        createDrawerBodyItem(
            icon: Icons.rule,
            text: 'Privacy Policy',
            onTap: () {
              // Navigator.push(context,
              //     MaterialPageRoute(builder: (context) => const Faqs()));
            }),
        createDrawerBodyItem(
            icon: Icons.document_scanner,
            text: 'Term and condition',
            onTap: () {
              // Navigator.push(
              //     context,
              //     MaterialPageRoute(
              //         builder: (context) => const TermAndCondition()));
            }),
        createDrawerBodyItem(
            icon: Icons.share,
            text: 'Share',
            onTap: () {
              Share.share(
                  'https://play.google.com/store/apps/details?id=com.quickplayers.quickplayers');
            }),
        // finalUserId == null
        //     ?
        createDrawerBodyItem(
            icon: Icons.login,
            text: 'Go back to Login page',
            onTap: () {
              // Navigator.push(
              //     context,
              //     MaterialPageRoute(
              //         builder: (context) => const LoginPage()));
            }),
        // :
        // createDrawerBodyItem(
        //     icon: Icons.logout,
        //     text: 'LogOut',
        //     onTap: () async {
        //       // Provider.of<LoginController>(context, listen: false).logOut();
        //       // _logOutUser();
        //       // Navigator.pushAndRemoveUntil(
        //       //     context,
        //       //     MaterialPageRoute(
        //       //         builder: (context) => const LoginPage()),
        //       //     (route) => false);
        //     })
      ],
    ));
  }

  Widget createDrawerBodyItem(
      {required IconData icon,
      required String text,
      required GestureTapCallback onTap}) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Card(
        child: ListTile(
          title: Row(
            children: <Widget>[
              Icon(
                icon,
                size: 30,
                color: kGreyColor,
              ),
              const SizedBox(
                width: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(
                  text,
                  style: kGLCAtStyle,
                ),
              )
            ],
          ),
          onTap: onTap,
        ),
      ),
    );
  }
}
