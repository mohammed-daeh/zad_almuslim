// ignore_for_file: must_be_immutable, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quran/core/translation/translation.dart';
import 'package:quran/view/dua/controller/morning_azkar_progres_controller.dart';
import 'package:get/get.dart';

class CardMuslimAzkar extends StatelessWidget {
  CardMuslimAzkar({super.key});
  MorningAzkarProgresController progressController =
      Get.put(MorningAzkarProgresController());
  @override
  Widget build(BuildContext context) {
    return Obx(
      () {
        return Stack(
          children: [
            Container(
              width: 163,
              height: 124,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16), color: Colors.white),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SvgPicture.asset(
                      'assets/images/duaPage/Muslim_Azkar.svg',
                      width: 40,
                      height: 40,
                    ),
                    SizedBox(height: 9),
                    Text(
                      Utils.localize('muslimAzkar'),
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      '${progressController.currentValue} / ${progressController.maxValue}', // عرض القيم
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff062437),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              right: 0,
              bottom: 0,
              child: ClipRRect(
                borderRadius: BorderRadius.only(topRight: Radius.circular(16)),
                child: SvgPicture.asset(
                  'assets/images/duaPage/zagrafa_corner_bottom_right.svg',
                  fit: BoxFit.scaleDown,
                ),
              ),
            ),
            // Positioned(

            // )
          ],
        );
      },
    );
  }
}
