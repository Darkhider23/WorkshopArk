import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../models/house_model.dart';
import '../../../../utils/common/constants.dart';
import '../../../../utils/widgets/custom_button.dart';
import '../mobile/filter_widget.dart';
import 'house_ad_widget_desktop.dart';

class HomeDesktopPage extends StatefulWidget {
  @override
  State<HomeDesktopPage> createState() => _HomeDesktopPageState();
}

class _HomeDesktopPageState extends State<HomeDesktopPage> {
  final filterList = ['<\$100.000', '1 bedroom', '2 bedrooms', '2 bathrooms'];

  String activeFilter = '';
  List<House> filteredHouseList = [];

  @override
  Widget build(BuildContext context) {
    int crossAxisCount = (MediaQuery.of(context).size.width / 500).floor();

    return Scaffold(
      backgroundColor: Colors.white70,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomButtonWidget(
                  icon: Icons.menu,
                  iconColor: ColorConstant.kBlackColor,
                  backgroundColor: Colors.transparent,
                  onBtnTap: () {},
                ),
                Text(
                  'Imobiliare',
                  style: GoogleFonts.manrope(
                    fontSize: 36,
                    color: ColorConstant.kBlackColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                CustomButtonWidget(
                  icon: Icons.refresh,
                  iconColor: ColorConstant.kBlackColor,
                  backgroundColor: Colors.transparent,
                  onBtnTap: () {},
                )
              ],
            ),
            const SizedBox(height: 32),
            Text(
              'City',
              style: GoogleFonts.manrope(
                fontSize: 12,
                color: ColorConstant.kGreyColor,
                fontWeight: FontWeight.w300,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              'Cluj Napoca',
              style: GoogleFonts.manrope(
                fontSize: 36,
                color: ColorConstant.kBlackColor,
                fontWeight: FontWeight.w700,
              ),
            ),
            const Divider(
              color: ColorConstant.kGreyColor,
              thickness: 0.2,
            ),
            SizedBox(
              height: 50,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: filterList.length,
                itemBuilder: (context, index) {
                  return FilterWidget(
                    filterTxt: filterList[index],
                    isActive: activeFilter == filterList[index] ? true : false,
                    onBtnTap: () {
                      setState(() {
                        if (activeFilter == filterList[index]) {
                          activeFilter = "";
                        } else {
                          activeFilter = filterList[index];
                        }
                        filteredHouseList = Constants.houseList
                            .where((house) => isFiltered(
                                house.price, house.bedrooms, house.bathrooms))
                            .toList();

                        for (int i = 0; i < filteredHouseList.length; i++) {
                          print(
                              'Name: ${filteredHouseList[i].id}, Bedroom: ${filteredHouseList[i].bedrooms}, Bathrooms: ${filteredHouseList[i].bathrooms}');
                        }
                      });
                    },
                  );
                },
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 500, // Maximum width for each item
                crossAxisSpacing: 16.0, // Adjust spacing as needed
                mainAxisSpacing: 16.0, // Adjust spacing as needed
                childAspectRatio: 3 / 2.5, // Adjust aspect ratio as needed
              ),
              itemCount: activeFilter.isEmpty
                  ? Constants.houseList.length
                  : filteredHouseList.length,
              itemBuilder: (BuildContext context, int index) {
                House house;
                if (activeFilter.isEmpty) {
                  house = Constants.houseList[index];
                } else {
                  house = filteredHouseList[index];
                }
                int imgPathIndex = house.id - 1;
                if (imgPathIndex >= 0 &&
                    imgPathIndex < Constants.imageList.length) {
                  return isFiltered(
                          house.price, house.bedrooms, house.bathrooms)
                      ? Padding(
                          padding: const EdgeInsets.all(8.0),
                          // Adjust padding as needed
                          child: HouseAdWidgetDesktop(
                            house: house, // Pass the correct house here
                            imgPathIndex: imgPathIndex,
                          ),
                        )
                      : const SizedBox();
                } else {
                  return const SizedBox();
                }
              },
            )
          ],
        ),
      ),
    );
  }

  bool isFiltered(price, bedrooms, bathrooms) {
    if (activeFilter.isEmpty) return true;
    if (activeFilter.contains('bedroom')) {
      if (activeFilter[0] == '1' && bedrooms == 1) {
        return true;
      } else if (activeFilter[0] == '2' && bedrooms == 2) {
        return true;
      }
      // } else if (activeFilter[0] == '3' && bedrooms == 3) {
      //   return true;
      // } else if (activeFilter[0] == '4' && bedrooms == 4) {
      //   return true;
      // }
    }
    if (activeFilter.contains('bath')) {
      if (activeFilter[0] == '1' && bathrooms == 1) {
        return true;
      } else if (activeFilter[0] == '2' && bathrooms == 2) {
        return true;
      }
      // } else if (activeFilter[0] == '3' && bathrooms == 3) {
      //   return true;
      // } else if (activeFilter[0] == '4' && bathrooms == 4) {
      //   return true;
      // }
    }
    if (activeFilter.contains('\$')) {
      if (price < 100000) {
        return true;
      }
    }
    return false;
  }
}
