import 'package:bloc/bloc.dart';
import 'package:bookapp/core/repositories/user_repository.dart';
import 'package:bookapp/features/home/data/models/books/books.dart';
import 'package:equatable/equatable.dart';

part 'detalies_state.dart';

class DetaliesCubit extends Cubit<DetaliesState> {
  DetaliesCubit(this.userRepository) : super(DetaliesInitial());
  final UserRepository userRepository;

  featchBestSellerBooks({required String  category}) async {
    emit(DetailsLoading());
    final response = await userRepository.featchSimilarBooks(category: category);
    response.fold(
      (errMessage) => emit(DetailsFaluier( massege: errMessage)),
      (books) => emit(DetailsSuccess(books: books)),
    );
  }
}
