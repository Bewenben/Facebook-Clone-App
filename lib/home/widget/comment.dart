// ignore_for_file: prefer_final_fields, unused_field

import 'package:flutter/material.dart';

class Comment extends StatefulWidget {
  const Comment({Key? key}) : super(key: key);

  @override
  State<Comment> createState() => _CommentState();
}

class _CommentState extends State<Comment> {
    bool _visiblecomment = true;
  bool _containercomment = true;
  Color _commentColor = Colors.white;
  bool _containercommentsection = true;
  bool _visiblecommentsection = true;
  final myController = TextEditingController();
  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          height: 55,
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
      ],
    );
  }
}
