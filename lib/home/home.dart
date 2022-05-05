import 'package:facebookui/constant/constant.dart';
import 'package:facebookui/profile/profile.dart';
import 'package:flutter/material.dart';
import 'widget/posts/post1.dart';
import 'widget/posts/post2.dart';
import 'widget/stories/mystory.dart';
import 'widget/what_is_on_your_mind.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selector = 0;
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
          const BottomNavigationBarItem(
            icon: Icon(Icons.home),
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
            icon: InkWell(
              onTap: () {
                Navigator.of(context).push(_createRoute());
              },
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(40),
                  child: Image.asset('assets/images/profile.JPG', width: 20)),
            ),
            label: 'Profile',
          ),
        ],
      ),
      appBar: topAppBar(),
      // appBar: profileAppBar(),
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: const [
          Whatisonyourmind(),
          MyStory(),
          Divider(
            color: Colors.black,
            thickness: 8,
          ),
          Post1(),
          SizedBox(
            height: 10,
          ),
          Post2(),
        ]),
      ),
    );
  }

  AppBar topAppBar() {
    return AppBar(
      backgroundColor: mBackgroundColor,
      elevation: 5,
      leadingWidth: 300,
      leading: SizedBox(
        height: 300,
        width: 300,
        child: Padding(
          padding: const EdgeInsets.only(left: 1.0),
          child: Image.asset(
            'assets/icons/facebook.png',
            fit: BoxFit.cover,
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
                        color: mTintColor),
                    child: IconButton(
                      icon: Image.asset(
                        'assets/icons/search.png',
                        width: 36,
                      ),
                      onPressed: () {},
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(400),
                      color: mTintColor),
                  child: IconButton(
                    icon: Image.asset(
                      'assets/icons/messenger.png',
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
    pageBuilder: (context, animation, secondaryAnimation) => const Profile(),
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
