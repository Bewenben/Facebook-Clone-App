import 'package:facebookui/constant/constant.dart';
import 'package:flutter/material.dart';

class Post1 extends StatefulWidget {
  const Post1({Key? key}) : super(key: key);

  @override
  State<Post1> createState() => _Post1State();
}

class _Post1State extends State<Post1> {
  bool _visiblelike = true;
  bool _containerlike = true;
  Color _likeColor = Colors.white;
  bool _visiblecomment = true;
  bool _containercomment = true;
  Color _commentColor = Colors.white;
  bool _containercommentsection = true;
  bool _visiblecommentsection = true;
  double container = 210;
  int likecounter = 0;
  int commentcounter = 0;

  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        width: 400,
        height: container,
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
                            child: Image.asset('assets/images/profile.JPG')),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0, left: 8.0),
                  child: Column(children: [
                    const Text('Omar Khaled',
                        style: TextStyle(
                            fontFamily: 'Roboto', fontWeight: FontWeight.bold)),
                    Padding(
                      padding: const EdgeInsets.only(right: 30.0),
                      child: Row(
                        children: [
                          const Text('5 hrs • ',
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
                  padding: const EdgeInsets.only(left: 140.0),
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
            const Padding(
              padding: EdgeInsets.only(top: 20.0, right: 220.0),
              child: Text('Hello World!',
                  style: TextStyle(
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.normal,
                      fontSize: 28)),
            ),

            /*---------------------------------------------------------------------*/
            /* POST OPTIONS */
            /* Like Button */

            AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              height: _containerlike ? 0 : 50,
              child: AnimatedOpacity(
                opacity: _visiblelike ? 0.0 : 1.0,
                duration: const Duration(milliseconds: 200),
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
                                child: const Icon(
                                  Icons.thumb_up,
                                  size: 10,
                                )),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 4.0),
                            child: Text(likecounter.toString(),
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
                            if (_likeColor == mPrimaryColor) {
                              _likeColor = mHighlightColor;
                              likecounter++;
                              container = container + 50;
                            } else {
                              _likeColor = mPrimaryColor;
                              likecounter--;
                              container = container - 50;
                            }
                            _visiblelike = !_visiblelike;
                            _containerlike = !_containerlike;
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
                            Icon(Icons.thumb_up, color: _likeColor),
                            Padding(
                              padding: const EdgeInsets.only(left: 4.0),
                              child: Text('Like',
                                  style: TextStyle(
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12,
                                    color: _likeColor,
                                  )),
                            ),
                          ],
                        ),
                      ),
                    ),
                    /* Comment Button */
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: ElevatedButton(
                        onPressed: () {
                          setState(
                            () {
                              if (_commentColor == mPrimaryColor) {
                                _commentColor = Colors.white70;
                                container = container + 50;
                              } else {
                                _commentColor = mPrimaryColor;
                                container = container - 50;
                              }
                              _visiblecomment = !_visiblecomment;
                              _containercomment = !_containercomment;
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
                              Icon(Icons.comment, color: _commentColor),
                              Padding(
                                padding: const EdgeInsets.only(left: 4.0),
                                child: Text('Comment',
                                    style: TextStyle(
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12,
                                      color: _commentColor,
                                    )),
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
                Divider(
                  color: mTintColor,
                  thickness: 1,
                  indent: 10,
                  endIndent: 10,
                ),
              ],
            ),
            AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              height: _containercommentsection ? 0 : 55,
              child: AnimatedOpacity(
                opacity: _visiblecommentsection ? 0.0 : 1.0,
                duration: const Duration(milliseconds: 200),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                  width: 30,
                                  height: 30,
                                  child: ClipRRect(
                                      borderRadius: BorderRadius.circular(150),
                                      child: Image.asset(
                                          'assets/images/profile.JPG'))),
                              Column(
                                children: [
                                  const Padding(
                                      padding: EdgeInsets.only(left: 8.0),
                                      child: Text("Omar Khaled",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold))),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 45.0),
                                    child: Text(
                                      myController.text,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              height: _containercomment ? 0 : 50,
              child: AnimatedOpacity(
                opacity: _visiblecomment ? 0.0 : 1.0,
                duration: const Duration(milliseconds: 200),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                  width: 30,
                                  height: 30,
                                  child: ClipRRect(
                                      borderRadius: BorderRadius.circular(150),
                                      child: Image.asset(
                                          'assets/images/profile.JPG'))),
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: SizedBox(
                                  width: 270,
                                  child: TextField(
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(150)),
                                      hintText: "Write a comment...",
                                      hintStyle: TextStyle(
                                          color: mPrimaryColor, fontSize: 11),
                                    ),
                                    controller: myController,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 4.0),
                                child: ConstrainedBox(
                                  constraints: const BoxConstraints.tightFor(
                                      width: 60, height: 60),
                                  child: ElevatedButton(
                                    onPressed: () {
                                      setState(
                                        () {
                                          if (commentcounter == 0) {
                                            _visiblecommentsection =
                                                !_visiblecommentsection;
                                            _containercommentsection =
                                                !_containercommentsection;
                                            commentcounter++;
                                            container = container + 55;
                                          } else {
                                            commentcounter++;
                                            container = container + 55;
                                          }
                                        },
                                      );
                                    },
                                    style: ElevatedButton.styleFrom(
                                      elevation: 0,
                                      primary: mButtonColor,
                                    ),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(150),
                                      child: Container(
                                          width: 60,
                                          height: 60,
                                          decoration: BoxDecoration(
                                              color: mHighlightColor),
                                          child:
                                              const Icon(Icons.send, size: 15)),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
