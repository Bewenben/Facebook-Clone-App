import 'package:facebookui/constant/constant.dart';
import 'package:flutter/material.dart';

class OthersStory4 extends StatelessWidget {
  const OthersStory4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Stack(
              children: [
                Container(
                  color: mTintColor,
                  width: 100,
                  height: 200,
                  child: Image.asset(
                    'assets/images/4.jpg',
                    fit: BoxFit.fill,
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 10,
                  child: Container(
                    child: const Text('Mazen Samer',
                        style: TextStyle(
                            fontFamily: 'Roboto', fontWeight: FontWeight.bold)),
                    height: 50,
                    width: 50,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(50)),
                  ),
                ),
                Positioned(
                  top: 10,
                  left: 10,
                  child: Container(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(40),
                      child: Image.asset('assets/images/Mazen.jpg',
                          fit: BoxFit.cover),
                    ),
                    height: 40,
                    width: 40,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(50)),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
