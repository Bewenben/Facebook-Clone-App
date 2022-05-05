import 'package:facebookui/constant/constant.dart';
import 'package:flutter/material.dart';

class Post2 extends StatefulWidget {
  const Post2({Key? key}) : super(key: key);

  @override
  State<Post2> createState() => _Post2State();
}

class _Post2State extends State<Post2> {
  bool _visible = true;
  bool _container = true;
  Color _iconColor = Colors.white;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        width: 400,
        height: _container ? 580 : 630,
        decoration: BoxDecoration(
          border: Border.all(color: mTintColor, width: 2),
        ),
        child: Column(
          children: [
            Row(
              children: [
                Material(
                  child: InkWell(
                    onTap: () {},
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 20.0, bottom: 1.0, left: 8.0),
                      child: SizedBox(
                        width: 50,
                        height: 50,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: Image.asset('assets/images/Adly.jpg',
                              fit: BoxFit.cover),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0, left: 8.0),
                  child: Column(children: [
                    const Text('Moustafa Adly',
                        style: TextStyle(
                            fontFamily: 'Roboto', fontWeight: FontWeight.bold)),
                    Padding(
                      padding: const EdgeInsets.only(right: 30.0),
                      child: Row(
                        children: [
                          const Text('11 hrs • ',
                              style: TextStyle(
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w400)),
                          Image.asset('assets/icons/globe.png', width: 10),
                        ],
                      ),
                    )
                  ]),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 130.0),
                  child: ConstrainedBox(
                    constraints:
                        const BoxConstraints.tightFor(width: 50, height: 50),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        elevation: 0,
                        primary: mButtonColor,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: const [
                          Icon(Icons.more_horiz, size: 18),
                        ],
                      ),
                    ),
                  ),
                ),
                ConstrainedBox(
                  constraints:
                      const BoxConstraints.tightFor(width: 50, height: 50),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      primary: mButtonColor,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [
                        Icon(Icons.close, size: 18),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15.0),
              child: Image.asset(
                'assets/images/Adly.jpg',
                width: 300,
              ),
            ),
            AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              height: _container ? 0 : 50,
              child: AnimatedOpacity(
                opacity: _visible ? 0.0 : 1.0,
                duration: const Duration(milliseconds: 200),
                // The green box must be a child of the AnimatedOpacity widget.
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(60),
                            child: Container(
                                color: mHighlightColor,
                                width: 20,
                                height: 20,
                                child: const Icon(Icons.thumb_up, size: 10)),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 4.0),
                            child: Text('1',
                                style: TextStyle(
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  color: mPrimaryColor,
                                )),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Column(
              children: [
                Divider(
                  color: mTintColor,
                  thickness: 1,
                  indent: 10,
                  endIndent: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        setState(
                          () {
                            if (_iconColor == mPrimaryColor) {
                              _iconColor = mHighlightColor;
                            } else {
                              _iconColor = mPrimaryColor;
                            }
                            _visible = !_visible;
                            _container = !_container;
                          },
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        elevation: 0,
                        primary: mButtonColor,
                      ),
                      child: SizedBox(
                        width: 81,
                        height: 50,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.thumb_up, color: _iconColor),
                            Padding(
                              padding: const EdgeInsets.only(left: 4.0),
                              child: Text('Like',
                                  style: TextStyle(
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12,
                                    color: _iconColor,
                                  )),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          elevation: 0,
                          primary: mButtonColor,
                        ),
                        child: SizedBox(
                          width: 81,
                          height: 50,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(Icons.comment),
                              Padding(
                                padding: EdgeInsets.only(left: 4.0),
                                child: Text('Comment',
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
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          elevation: 0,
                          primary: mButtonColor,
                        ),
                        child: Center(
                          child: SizedBox(
                            width: 80,
                            height: 50,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Icon(Icons.share),
                                Padding(
                                  padding: EdgeInsets.only(left: 4.0),
                                  child: Text('Share',
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
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
