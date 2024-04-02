import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mvvm_watherapp_with_apis_getx/Resources/Colors/colors.dart';
import 'package:mvvm_watherapp_with_apis_getx/View/Next-Days/Component/app_bar.dart';
import 'package:mvvm_watherapp_with_apis_getx/View/Next-Days/Component/bottom_list.dart';
import 'package:mvvm_watherapp_with_apis_getx/View/Next-Days/Component/center_card.dart';
import 'package:mvvm_watherapp_with_apis_getx/View/Next-Days/Component/days_list.dart';
import 'package:mvvm_watherapp_with_apis_getx/ViewModel/Controller/days_controller.dart';
import 'package:mvvm_watherapp_with_apis_getx/ViewModel/Controller/home_controller.dart';

class NextDays extends StatelessWidget {
   NextDays({super.key});

  final homeController = Get.put(HomeController());
   final controller = Get.put(DaysController());

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return  Container(
      decoration: AppColors.buildGradientBoxDecoration(),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
            child: SizedBox(
              height: size.height,
              width: size.width,
              child:  Stack(
                alignment: Alignment.center,
                children: [
                  Column(
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      const CustomAppBarz(),
                      const SizedBox(height: 20,),
                      DaysList(),

                    ],
                  ),
                  Positioned(
                      bottom: 1,
                      child: Container(
                        height: size.height /1.9,
                        width: size.width,
                        decoration: const BoxDecoration(
                            color: Colors.white38,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(100),
                                topRight: Radius.circular(100)
                            )
                        ),
                      )
                  ),
                  BottomList(),
                  Hero(
                      tag: 'Tag',
                      child: Material(color: Colors.transparent, child: CenterCard(),)
                  )
                ],
              ),
            )
        ),
      ),
    );
  }
}
