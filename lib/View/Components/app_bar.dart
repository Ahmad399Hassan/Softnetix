import 'package:flutter/material.dart';
import 'package:mvvm_watherapp_with_apis_getx/Resources/Images/image_assets.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        const Padding(
            padding: EdgeInsets.all(8),
          child: Icon(Icons.menu,color: Colors.white,),
        ),
        const SizedBox(width: 10,),

        const Padding(
          padding: EdgeInsets.all(8),
          child: Icon(Icons.notifications_none_rounded,
            color: Colors.white,),
        ),
        const Spacer(),
        Padding(
            padding: const EdgeInsets.all(8.0),
          child: Image.asset(
            ImageAssets.nightRain,
            width: 30,
            height: 30,
          )
        )
      ],
    );
  }
}

