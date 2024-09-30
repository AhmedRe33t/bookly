import 'package:bookapp/core/widgets/custom_shimmer_category.dart';
import 'package:bookapp/core/widgets/custom_toast.dart';
import 'package:bookapp/features/detailes/presentation/cubit/detalies_cubit.dart';
import 'package:bookapp/features/home/data/models/books/books.dart';
import 'package:bookapp/features/home/presentation/views/widgets/custom_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SimelarBooksListView extends StatelessWidget {
  const SimelarBooksListView({super.key, required this.bookModel});
   final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<DetaliesCubit, DetaliesState>(
      listener: (context, state) {
      if(state is DetailsFaluier){
        showToast(state.massege);
      }
      },
      builder: (context, state) {
        return  state is DetailsLoading?const CustomShimmerCategory(): state is DetailsSuccess?
        SizedBox(
          height: 150.h,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, index) {
                return CustomListViewItems(
                  width: 100.w,
                  high: 100.h,
                  imageUrl:
                      state.books[index].volumeInfo!.imageLinks!.thumbnail??'',
                );
              }),
        ):Container();
      },
    );
  }
}
