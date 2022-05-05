import 'package:facebookui/constant/constant.dart';
import 'package:flutter/material.dart';

class Bio extends StatelessWidget {
  const Bio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: Column(
        children: [
          Row(
            children: [
              Icon(Icons.business_center, color: mSecondaryColor),
              const Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: Text('Head of It at IEEE AAST Alex SB',
                    style: TextStyle(
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.normal,
                        fontSize: 16)),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Row(
              children: [
                Icon(Icons.business_center, color: mSecondaryColor),
                const Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: Text('Volunteer at IEEE AAST Alex SB',
                      style: TextStyle(
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.normal,
                          fontSize: 16)),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Row(
              children: [
                Icon(Icons.school, color: mSecondaryColor),
                const Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: SizedBox(
                    width: 300,
                    height: 50,
                    child: Padding(
                      padding: EdgeInsets.only(top: 10.0),
                      child: Text(
                          'Went to Al-Ferdous Governmental Distinguished Language School',
                          maxLines: 3,
                          style: TextStyle(
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.normal,
                              fontSize: 16)),
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Row(
              children: [
                Icon(Icons.school, color: mSecondaryColor),
                const Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: Text(
                      'Studies Department of Computer Engineering\n and Informatics at Arab Academy for Science & \nTechnology & Maritime Transport',
                      style: TextStyle(
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.normal,
                          fontSize: 16)),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Row(
              children: [
                Icon(Icons.house, color: mSecondaryColor),
                const Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: Text('Lives in Alexandria, Egypt',
                      style: TextStyle(
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.normal,
                          fontSize: 16)),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Row(
              children: [
                Icon(Icons.more_horiz, color: mSecondaryColor),
                const Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: Text('See Your About Info',
                      style: TextStyle(
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.normal,
                          fontSize: 16)),
                )
              ],
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: const Color.fromRGBO(38, 55, 81, 1),
                  ),
                  child: SizedBox(
                    width: 340,
                    height: 35,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text('Edit Public Details',
                            style: TextStyle(
                                color: Color.fromRGBO(135, 187, 244, 1),
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
      ),
    );
  }
}
