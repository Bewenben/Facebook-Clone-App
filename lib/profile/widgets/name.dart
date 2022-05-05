import 'package:flutter/material.dart';

class Name extends StatelessWidget {
  const Name({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 87.5),
        child: Row(
          children: const [
            Text('Omar Khaled',
                style: TextStyle(
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.bold,
                    fontSize: 24)),
            Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Text('(Madridista)',
                  style: TextStyle(
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.normal,
                      fontSize: 16)),
            ),
          ],
        ),
      ),
    );
  }
}
