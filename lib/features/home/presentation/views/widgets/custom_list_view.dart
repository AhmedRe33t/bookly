
import 'package:bookapp/features/home/presentation/views/cubit/user_cubit.dart';
import 'package:bookapp/features/home/presentation/views/cubit/user_state.dart';
import 'package:bookapp/core/utility/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomListViewItems extends StatelessWidget {
  const CustomListViewItems(
      {super.key, required this.width, required this.high});
  final double width;
  final double high;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<UserCubit, UserState>(
      listener: (context, state) {
         if (state is FeuteredBooksFaluier) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(state.errMessage),
            ),
          );
        }
      },
      builder: (context, state) {
        return state is FeuteredBooksLoading? CircularProgressIndicator() :state is FeuteredBooksSucces? Container(
          alignment: Alignment.bottomRight,
          height: high,
          width: width,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              image:const  DecorationImage(
                  image: AssetImage(
                    
                    Assets.imagesTestImage,
                  ),
                  fit: BoxFit.fill)),
        ):Container();
      },
    );
  }
}
