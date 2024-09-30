
import 'package:bookapp/features/home/data/models/books/books.dart';

class UserState {}

final class UserInitial extends UserState {}

final class FeuteredBooksSucces extends UserState {
  final List<BookModel> books;

  FeuteredBooksSucces({required this.books});
}

final class FeuteredBooksLoading extends UserState {}

final class FeuteredBooksFaluier extends UserState {
  final String errMessage;

  FeuteredBooksFaluier({required this.errMessage});
}
