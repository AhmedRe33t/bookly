import 'package:bookapp/features/detailes/presentation/cubit/detalies_cubit.dart';
import 'package:bookapp/features/detailes/presentation/view/widgets/details_body.dart';
import 'package:bookapp/features/home/data/models/books/books.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DetailsView extends StatefulWidget {
  const DetailsView({super.key, required this.bookModel});
final BookModel bookModel;
  @override
  State<DetailsView> createState() => _DetailsViewState();
}

class _DetailsViewState extends State<DetailsView> {
  @override
  void initState() {
    super.initState();
         // ignore: avoid_single_cascade_in_expression_statements
         BlocProvider.of<DetaliesCubit>(context)..featchBestSellerBooks(category:widget.bookModel.volumeInfo!.categories![0]);

  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(child: DetailsBody(bookModel: widget.bookModel,)),
    );
  }
}
