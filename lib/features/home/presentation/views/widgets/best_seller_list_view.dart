import 'package:bookapp/core/widgets/custom_shimmer_category.dart';
import 'package:bookapp/core/widgets/custom_toast.dart';
import 'package:bookapp/features/home/presentation/cubit/best_seller_cubit.dart';
import 'package:bookapp/features/home/presentation/cubit/best_seller_state.dart';
import 'package:bookapp/features/home/presentation/views/widgets/best_seller_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<BestSellerCubit, BestSellerState>(
      listener: (context, state) {
       if(state is BestSellerStateFaluier){
            showToast(state.errMessage);
       }
      },
      builder: (context, state) {
        return state is BestSellerStateLoading?const CustomShimmerCategory():state is BestSellerStateSucces? ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            itemCount: state.books.length,
            itemBuilder: (context, index) {
              return  BestSellerListViewIteams(books: state.books[index] ,);
            }):Container();
      },
    );
  }
}
