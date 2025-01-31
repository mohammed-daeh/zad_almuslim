// ignore_for_file: prefer_const_constructors, unnecessary_string_interpolations, unnecessary_brace_in_string_interps, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:quran/view/quran_pages/main_page/controller/card_play_controller.dart';

class CardQuranHizb extends StatelessWidget {
  final String hizbNumber;
  final String hizbName;
  final String count;
  final String sura;
  CardQuranHizb({
    super.key,
    required this.hizbNumber,
    required this.hizbName,
    required this.count,
    required this.sura,
  });
  CardPlayController isPlayer = Get.put(CardPlayController());

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        isPlayer.toggleVisibility();
      },
      child: Container(
        height: 82,
        decoration: BoxDecoration(
            border: Border(
                bottom: BorderSide(color: Color(0xffE3EBEC), width: 0.5))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(children: [
              SvgPicture.asset(
                'assets/icons/containar_zagrafa.svg',
                width: 26,
                height: 26,
              ),
              Positioned(
                top: 0,
                bottom: 0,
                right: 0,
                left: 0,
                child: Center(
                  child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      hizbNumber,
                      style: TextStyle(
                        color: Color(0xff124D73),
                        fontSize: 11,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
            ]),
            SizedBox(
              width: 17,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hizb ${hizbNumber}',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff124D73)),
                ),
                Row(
                  children: [
                    Text(
                      count,
                      style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w400,
                        color: Color(0xffAD5500),
                      ),
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Text(
                      ' / ',
                      style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w400,
                        color: Color(0xffAD5500),
                      ),
                    ),
                    Text(
                      hizbName,
                      style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w400,
                        color: Color(0xffAD5500),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Spacer(),
            Text(
              sura,
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff124D73)),
            )
          ],
        ),
      ),
    );
  }
}
