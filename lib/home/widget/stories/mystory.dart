import 'package:facebookui/constant/constant.dart';
import 'package:flutter/material.dart';

import 'othersstory1.dart';
import 'othersstory2.dart';
import 'othersstory3.dart';
import 'othersstory4.dart';

class MyStory extends StatelessWidget {
  const MyStory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              elevation: 0,
              primary: mButtonColor,
            ),
            child: Stack(children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    color: mTintColor,
                    width: 100,
                    height: 200,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 100.0),
                      child: Image.asset(
                        'assets/images/profile.JPG',
                        width: 100,
                        height: 50,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 80,
                right: 33,
                child: Container(
                  child: Image.asset('assets/icons/plus.png'),
                  height: 50,
                  width: 50,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(50)),
                ),
              ),
              Positioned(
                top: 130,
                right: 33,
                child: Container(
                  child: const Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Create Story',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      )),
                  height: 50,
                  width: 50,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(50)),
                ),
              ),
            ]),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: OthersStory1(),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: OthersStory2(),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: OthersStory3(),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: OthersStory4(),
          ),
        ],
      ),
    );
  }
}
