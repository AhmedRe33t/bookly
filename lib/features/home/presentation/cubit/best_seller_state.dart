
import 'package:bookapp/features/home/data/models/books/books.dart';

class BestSellerState {}

final class BestSellerInitial extends BestSellerState {}

final class BestSellerStateSucces extends BestSellerState {
  final List<BookModel> books;

  BestSellerStateSucces({required this.books});
}

final class BestSellerStateLoading extends BestSellerState {}

final class BestSellerStateFaluier extends BestSellerState {
  final String errMessage;

  BestSellerStateFaluier({required this.errMessage});
}
