import 'package:bookapp/features/detailes/presentation/view/widgets/details_body.dart';
import 'package:flutter/material.dart';

class DetailsView extends StatelessWidget {
  const DetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: DetailsBody()),
    );
  }
}
