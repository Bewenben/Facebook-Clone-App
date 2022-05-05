import 'package:facebookui/constant/constant.dart';
import 'package:flutter/material.dart';

class Whatisonyourmind extends StatelessWidget {
  const Whatisonyourmind({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: SizedBox(
                width: 50,
                height: 50,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Image.asset('assets/images/profile.JPG')),
              ),
            ),
            SizedBox(
              width: 300,
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "What is on your mind?",
                  hintStyle: TextStyle(color: mPrimaryColor),
                ),
              ),
            )
          ],
        ),
        Divider(
          color: mTintColor,
          thickness: 1,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: ConstrainedBox(
                constraints:
                    const BoxConstraints.tightFor(width: 120, height: 30),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: mButtonColor,
                    elevation: 0,
                  ),
                  child: SizedBox(
                    width: 100,
                    height: 100,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/icons/live.png', width: 20),
                        const Padding(
                          padding: EdgeInsets.only(left: 4.0),
                          child: Text('Live',
                              style: TextStyle(
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12)),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border(
                  left: BorderSide(width: 1, color: mTintColor),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                child: ConstrainedBox(
                  constraints:
                      const BoxConstraints.tightFor(width: 120, height: 30),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: mButtonColor,
                      elevation: 0,
                    ),
                    child: SizedBox(
                      width: 100,
                      height: 100,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/icons/photo.png', width: 20),
                          const Padding(
                            padding: EdgeInsets.only(left: 4.0),
                            child: Text('Photo',
                                style: TextStyle(
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12)),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border(
                  left: BorderSide(width: 1, color: mTintColor),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: ConstrainedBox(
                  constraints:
                      const BoxConstraints.tightFor(width: 120, height: 30),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: mButtonColor,
                      elevation: 0,
                    ),
                    child: SizedBox(
                      width: 100,
                      height: 100,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/icons/room.png', width: 20),
                          const Padding(
                            padding: EdgeInsets.only(left: 4.0),
                            child: Text('Room',
                                style: TextStyle(
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12)),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        const Divider(
          color: Colors.black,
          thickness: 8,
        ),
      ],
    );
  }
}
