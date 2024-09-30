import 'package:bookapp/core/services/navigation.dart';
import 'package:bookapp/core/utility/app_assets.dart';
import 'package:bookapp/features/search_view/presentation/view/search_view.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/route_manager.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50, bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            Assets.imagesLogo,
            height: 20,
          ),
          IconButton(
              onPressed: () {
               customNavigation(context, path: '/searchView');
              },
              icon: const Icon(
                FontAwesomeIcons.magnifyingGlass,
                color: Colors.white,
              ))
        ],
      ),
    );
  }
}
