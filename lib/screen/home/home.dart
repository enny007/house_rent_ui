import 'package:flutter/material.dart';
import 'package:house_rent_ui/widget/best_offer.dart';
import 'package:house_rent_ui/widget/categories.dart';
import 'package:house_rent_ui/widget/recommended_house.dart';

import '../../widget/bottom_navigation_bar.dart';
import '../../widget/search_input.dart';
import '../../widget/welcome_text.dart';
import 'custom_app_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: CustomAppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const WelcomeText(),
            const SearchInput(),
            Categories(),
            RecommendedHouse(),
            BestOffer()
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}
