import 'package:flutter/material.dart';

import '../../model/house.dart';
import 'about.dart';
import 'content_intro.dart';
import 'detail_app_bar.dart';
import 'house_intro.dart';

class PageDetail extends StatelessWidget {
  final House house;
  const PageDetail({Key? key, required this.house}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DetailAppBar(
              house: house,
            ),
            const SizedBox(
              height: 20,
            ),
            ContentIntro(
              house: house,
            ),
            const SizedBox(
              height: 20,
            ),
            const HouseInfo(),
            const SizedBox(
              height: 20,
            ),
            const About(),
            const SizedBox(
              height: 25,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    primary: Theme.of(context).primaryColor),
                onPressed: (() {}),
                child: Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: const Text(
                    'Book Now',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
