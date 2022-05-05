// ignore_for_file: prefer_const_constructors_in_immutables, prefer_final_fields

import 'package:facebookui/constant/constant.dart';
import 'package:flutter/material.dart';

class ControlComment extends StatefulWidget {
  ControlComment({Key? key}) : super(key: key);

  @override
  State<ControlComment> createState() => _ControlCommentState();
}

class _ControlCommentState extends State<ControlComment> {
  bool _visiblecomment = true;
  bool _containercomment = true;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
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
                              child: Image.asset('assets/images/profile.JPG'))),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: SizedBox(
                          width: 270,
                          child: TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(150)),
                              hintText: "Write a comment...",
                              hintStyle:
                                  TextStyle(color: mPrimaryColor, fontSize: 11),
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
                                () {},
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
                                  decoration:
                                      BoxDecoration(color: mHighlightColor),
                                  child: const Icon(Icons.send, size: 15)),
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
    );
  }
}
