import 'package:bookapp/core/services/navigation.dart';
import 'package:bookapp/core/widgets/custom_shimmer_category.dart';
import 'package:bookapp/core/widgets/custom_toast.dart';
import 'package:bookapp/features/home/presentation/cubit/user_cubit.dart';
import 'package:bookapp/features/home/presentation/cubit/user_state.dart';
import 'package:bookapp/features/home/presentation/views/widgets/custom_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomListView extends StatelessWidget {
  const CustomListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<UserCubit, UserState>(
      listener: (BuildContext context, UserState state) { 
        if(state is FeuteredBooksFaluier){
           showToast(state.errMessage);
        }
       },
      builder: (context, state) {
        return state is  FeuteredBooksLoading?const CustomShimmerCategory(): state is FeuteredBooksSucces?  ListView.builder(
            clipBehavior: Clip.none,
            padding: EdgeInsets.zero,
            scrollDirection: Axis.horizontal,
            itemCount: state.books.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: (){
                  customNavigation(context, path: '/detaliesView',extra: state.books[index]);
                },
                child: CustomListViewItems(
                  width: 170.w,
                  high: 200.h, imageUrl: state.books[index].volumeInfo!.imageLinks!.thumbnail??'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.sportskeeda.com%2Fanime%2Fis-sasuke-dead-boruto-status-explained&psig=AOvVaw0q7OH0pjEmikp6Ar_jJCpU&ust=1727749334695000&source=images&cd=vfe&opi=89978449&ved=0CBQQjRxqFwoTCOCZyf7N6YgDFQAAAAAdAAAAABAE',
                ),
              );
            }):Container();
      }, 
    );
  }
}
