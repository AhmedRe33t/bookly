import 'package:bookapp/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class DetailsBody extends StatelessWidget {
  const DetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:  EdgeInsets.symmetric(horizontal: 30.0),
      child:  Column(
        children: [
          CustomAppBar()
        ],
      ),
    );
  }
}

