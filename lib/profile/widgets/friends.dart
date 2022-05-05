import 'package:facebookui/constant/constant.dart';
import 'package:flutter/material.dart';

class Friends extends StatelessWidget {
  const Friends({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(
          top: 10.0,
          bottom: 10,
          left: 20.0,
          right: 20.0,
        ),
        child: Column(
          children: [
            Row(children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Friends',
                      style: TextStyle(
                          color: mPrimaryColor,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w500,
                          fontSize: 18)),
                  Text('1,012 friends',
                      style: TextStyle(
                          color: mSecondaryColor,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w400,
                          fontSize: 18)),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 165.0, bottom: 18.0),
                child: Text('Find Friends',
                    style: TextStyle(
                        color: mHighlightColor,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w400,
                        fontSize: 18)),
              ),
            ]),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        color: mTintColor,
                        width: 100,
                        height: 170,
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 60.0),
                          child: Image.asset(
                            'assets/images/Dody.JPG',
                            width: 100,
                            height: 100,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 130,
                    right: 33,
                    child: Container(
                      margin: const EdgeInsets.only(right: 14.0),
                      child: const Text(
                        'Danah Khedr',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50)),
                    ),
                  ),
                ]),
                Stack(children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        color: mTintColor,
                        width: 100,
                        height: 170,
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 60.0),
                          child: Image.asset(
                            'assets/images/Mariam.jpg',
                            width: 100,
                            height: 100,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 130,
                    right: 33,
                    child: Container(
                      margin: const EdgeInsets.only(left: 100.0),
                      child: const Text(
                        'Mariam Ali',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      height: 50,
                      width: 70,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50)),
                    ),
                  ),
                ]),
                Stack(children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        color: mTintColor,
                        width: 100,
                        height: 170,
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 60.0),
                          child: Image.asset(
                            'assets/images/Salah.jpg',
                            width: 100,
                            height: 100,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 130,
                    right: 33,
                    child: Container(
                      margin: const EdgeInsets.only(left: 100.0),
                      child: const Text(
                        'Yousef Salah',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      height: 50,
                      width: 70,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50)),
                    ),
                  ),
                ]),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        color: mTintColor,
                        width: 100,
                        height: 170,
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 60.0),
                          child: Image.asset(
                            'assets/images/Ayman.JPG',
                            width: 100,
                            height: 100,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 130,
                    right: 33,
                    child: Container(
                      margin: const EdgeInsets.only(right: 14.0),
                      child: const Text(
                        'Ahmed Ayman',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50)),
                    ),
                  ),
                ]),
                Stack(children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        color: mTintColor,
                        width: 100,
                        height: 170,
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 60.0),
                          child: Image.asset(
                            'assets/images/Adly.jpg',
                            width: 100,
                            height: 100,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 130,
                    right: 33,
                    child: Container(
                      margin: const EdgeInsets.only(right: 14.0),
                      child: const Text(
                        'Disha Adly',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50)),
                    ),
                  ),
                ]),
                Stack(children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        color: mTintColor,
                        width: 100,
                        height: 170,
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 60.0),
                          child: Image.asset(
                            'assets/images/Mazen.jpg',
                            width: 100,
                            height: 100,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 130,
                    right: 33,
                    child: Container(
                      margin: const EdgeInsets.only(right: 14.0),
                      child: const Text(
                        'Mazen Samer',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50)),
                    ),
                  ),
                ]),
              ],
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: mTintColor,
                    ),
                    child: SizedBox(
                      width: 340,
                      height: 35,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('See all friends',
                              style: TextStyle(
                                  color: mPrimaryColor,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18)),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
