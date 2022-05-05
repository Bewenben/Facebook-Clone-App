import 'package:facebookui/constant/constant.dart';
import 'package:facebookui/home/home.dart';
import 'package:facebookui/profile/widgets/bio.dart';
import 'package:facebookui/profile/widgets/buttons.dart';
import 'package:facebookui/profile/widgets/friends.dart';
import 'package:facebookui/profile/widgets/name.dart';
import 'package:facebookui/profile/widgets/photocover_profile.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  int selector = 4;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: mPrimaryColor,
        selectedItemColor: mHighlightColor,
        backgroundColor: mBackgroundColor,
        currentIndex: selector,
        onTap: (index1) => setState(() => selector = index1),
        items: [
          BottomNavigationBarItem(
            icon: InkWell(
                onTap: () {
                  Navigator.of(context).push(_createRoute());
                },
                child: const Icon(Icons.home)),
            label: 'Home',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.ondemand_video),
            label: 'Watch',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.groups),
            label: 'Groups',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notifications',
          ),
          BottomNavigationBarItem(
            icon: ClipRRect(
                borderRadius: BorderRadius.circular(40),
                child: Image.asset('assets/images/profile.JPG', width: 20)),
            label: 'Profile',
          ),
        ],
      ),
      appBar: topAppBar(),
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Photocoverprofile(),
          const Name(),
          const SizedBox(height: 10),
          const Buttons(),
          Divider(
            color: mTintColor,
            thickness: 2,
            indent: 20,
            endIndent: 15,
          ),
          const Bio(),
          Divider(
            color: mTintColor,
            thickness: 2,
            indent: 20,
            endIndent: 15,
          ),
          const Friends(),
        ]),
      ),
    );
  }

  AppBar topAppBar() {
    return AppBar(
      backgroundColor: mBackgroundColor,
      elevation: 5,
      title: const Text('Omar Khaled'),
      centerTitle: true,
      leading: SizedBox(
        height: 300,
        width: 300,
        child: Padding(
          padding: const EdgeInsets.only(left: 1.0),
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return const HomeScreen();
                }),
              );
            },
            child: const Icon(
              Icons.arrow_back_ios,
            ),
          ),
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(400),
                        color: mBackgroundColor),
                    child: IconButton(
                      icon: const Icon(Icons.edit),
                      onPressed: () {},
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(400),
                      color: mBackgroundColor),
                  child: IconButton(
                    icon: Image.asset(
                      'assets/icons/search.png',
                      width: 36,
                    ),
                    onPressed: () {},
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}

Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => const HomeScreen(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(0.0, 1.0);
      const end = Offset.zero;
      const curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}
