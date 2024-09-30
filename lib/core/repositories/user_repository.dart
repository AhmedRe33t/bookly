

import 'package:bookapp/core/api/api_consumer.dart';
import 'package:bookapp/core/api/end_ponits.dart';
import 'package:bookapp/core/errors/errors/exceptions.dart';
import 'package:bookapp/features/home/data/models/books/books.dart';
import 'package:dartz/dartz.dart';

class UserRepository {
  final ApiConsumer api;

  UserRepository({required this.api});
  

  Future<Either<String, List<BookModel>>> featchNewsBooks( ) async {
    try {
      final response = await api.get(
        EndPoint.getData,
      );
       List<BookModel> books=[];
       for (var element in response) {
         books.add(BookModel.fromJson(element));
       }
      return Right(books);
    } on ServerException catch (e) {
      return Left(e.errModel.errorMessage);
    }
  }


  Future<Either<String, List<BookModel>>> featchFeaturesBooks( ) async {
    try {
      final response = await api.get(
        EndPoint.programingBook,
      );
       List<BookModel> books=[];
       for (var element in response) {
         books.add(BookModel.fromJson(element));
       }
      return Right(books);
    } on ServerException catch (e) {
      return Left(e.errModel.errorMessage);
    }
  }



}
