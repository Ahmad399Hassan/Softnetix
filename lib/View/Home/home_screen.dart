import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mvvm_watherapp_with_apis_getx/Resources/Colors/colors.dart';
import 'package:mvvm_watherapp_with_apis_getx/View/Components/app_bar.dart';
import 'package:mvvm_watherapp_with_apis_getx/View/Components/container_list.dart';
import 'package:mvvm_watherapp_with_apis_getx/View/Components/info_card.dart';
import 'package:mvvm_watherapp_with_apis_getx/View/Components/location.dart';
import 'package:mvvm_watherapp_with_apis_getx/View/Next-Days/next_14_days.dart';
import 'package:mvvm_watherapp_with_apis_getx/ViewModel/Controller/home_controller.dart';

import '../Components/hours_list.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  final controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: AppColors.buildGradientBoxDecoration(),
        child:  Scaffold(
          backgroundColor: Colors.transparent,
          body: SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    const SizedBox(height: 10,),
                    const CustomAppBar(),
                    const SizedBox(height: 20,),
                    Location(),
                    Hero(
                        tag: 'TAG',
                        child: Material(
                          color: Colors.transparent,
                          child: InfoCard(),
                        )
                    ),
                   ContainerList(),
                    const SizedBox(height: 10,),
                    GestureDetector(
                      onTap: () => Get.to(() =>  NextDays()),
                      child: const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          children: [
                            Text(
                              'Today',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 22
                              ),
                            ),
                            Spacer(),
                            Text(
                              'Next 14 Days >',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),

                          ],
                        ),
                      ),
                    ),
                    HoursList(),
                  ],
                ),
              )
          ),
        )
    );
  }
}
