// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:quran/core/colors_app/colors_app.dart';
import 'package:quran/core/translation/translation.dart';
import 'package:quran/custom_widgets/card/card_dua_muslim_azkar.dart';
import 'package:quran/custom_widgets/card/card_dua_evening_azkar.dart';
import 'package:quran/custom_widgets/card/card_dua_morning_azkar.dart';
import 'package:quran/custom_widgets/card/card_dua_prophets_dua.dart';
import 'package:quran/custom_widgets/card/card_dua_quranic_dua.dart';
import 'package:quran/custom_widgets/card/card_dua_sunnah_dua.dart';
import 'package:quran/view/dua/controller/morning_azkar_progres_controller.dart';
import 'package:quran/view/dua/morning_dua_view.dart';

class DuaView extends StatelessWidget {
  DuaView({super.key});
  MorningAzkarProgresController controller1 =
      Get.put(MorningAzkarProgresController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(gradient: myLinearGradient),
          ),
          Positioned(
            left: 0,
            child: SvgPicture.asset(
              'assets/images/khatamPage/zagrafa_horizontal.svg',
            ),
          ),
          Positioned(
            top: 46,
            left: 0,
            right: 0,
            child: Container(
              height: 40,
              alignment: Alignment.center,
              child: Text(
                Utils.localize('duaAndAzkar'),
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Positioned(
            top: 85,
            bottom: 0,
            right: 0,
            left: 0,
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xffEEF5FA),
              ),
              child: SizedBox(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            MorningDuaView()));
                              },
                              child: CardMorningAzkar()),
                          SizedBox(
                            width: 16,
                          ),
                          CardEveningAzkar(),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CardMuslimAzkar(),
                        SizedBox(
                          width: 16,
                        ),
                        CardSunnahDua(),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CardQuranicDua(),
                          SizedBox(
                            width: 16,
                          ),
                          CardProphetsDua(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
