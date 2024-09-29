import 'package:bookapp/core/utility/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50,bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(Assets.imagesLogo,
          height: 20,),
          IconButton(onPressed: (){}, icon:const Icon(FontAwesomeIcons.magnifyingGlass,color: Colors.white,) )
        ],
      ),
    );
  }
}