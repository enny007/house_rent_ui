import 'package:flutter/material.dart';
import 'package:house_rent_ui/screen/detail/detail.dart';
import 'package:house_rent_ui/widget/circle_icon_button.dart';

import '../model/house.dart';

class RecommendedHouse extends StatelessWidget {
  RecommendedHouse({Key? key}) : super(key: key);

  final recommendedList = House.generateRecommended();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      height: 340,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: ((context, index) => GestureDetector(
                onTap: (() {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => PageDetail(
                        house: recommendedList[index],
                      ),
                    ),
                  );
                }),
                child: Container(
                  // height: 300,
                  width: 250,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                recommendedList[index].imageUrl!,
                              ),
                              fit: BoxFit.cover),
                        ),
                      ),
                      Positioned(
                        right: 15,
                        top: 15,
                        child: CircleIconButton(
                          iconUrl: 'assets/icons/mark.svg',
                          color: Theme.of(context).colorScheme.secondary,
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: Container(
                          color: Colors.white54,
                          padding: const EdgeInsets.all(10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    recommendedList[index].name!,
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline1!
                                        .copyWith(
                                            fontSize: 10,
                                            fontWeight: FontWeight.bold),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    recommendedList[index].address!,
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText1!
                                        .copyWith(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              CircleIconButton(
                                  iconUrl: 'assets/icons/mark.svg',
                                  color:
                                      Theme.of(context).colorScheme.secondary)
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )),
          separatorBuilder: (_, index) => const SizedBox(
                width: 20,
              ),
          itemCount: recommendedList.length),
    );
  }
}
