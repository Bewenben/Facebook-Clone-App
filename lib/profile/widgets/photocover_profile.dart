import 'package:flutter/material.dart';

class Photocoverprofile extends StatelessWidget {
  const Photocoverprofile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: SizedBox(
        height: 300,
        width: 400,
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20)),
              child: Image.asset(
                'assets/images/cover.jpg',
                fit: BoxFit.fill,
              ),
            ),
            Positioned(
                bottom: 70,
                right: 0,
                child: RawMaterialButton(
                  onPressed: () {},
                  elevation: 5.0,
                  fillColor: Colors.white,
                  child: const Icon(
                    Icons.camera_alt,
                    size: 20.0,
                    color: Colors.black,
                  ),
                  shape: const CircleBorder(),
                )),
            Positioned(
                bottom: 0,
                left: 100,
                child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Image.asset('assets/images/profile.JPG',
                          fit: BoxFit.fill, width: 180),
                    ),
                  ],
                )),
            Positioned(
                top: 250,
                right: 75,
                child: ClipRect(
                  child: RawMaterialButton(
                    onPressed: () {},
                    elevation: 5.0,
                    fillColor: Colors.white,
                    child: const Icon(
                      Icons.camera_alt,
                      size: 20.0,
                      color: Colors.black,
                    ),
                    shape: const CircleBorder(),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
