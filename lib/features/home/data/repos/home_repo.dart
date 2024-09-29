import 'package:bookapp/core/errors/faluires.dart';
import 'package:bookapp/features/home/data/models/books/books.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo{
 Future<Either<Faluier,List<BookModel>>> featchBestSellerBooks();
 Future<Either<Faluier,List<BookModel>>> featchFeatureBooks();
}