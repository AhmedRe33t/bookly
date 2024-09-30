import 'package:bloc/bloc.dart';
import 'package:bookapp/features/home/presentation/cubit/best_seller_state.dart';
import 'package:bookapp/core/repositories/user_repository.dart';


class BestSellerCubit extends Cubit<BestSellerState> {
  BestSellerCubit(this.userRepository) : super(BestSellerInitial());
  final UserRepository userRepository;
  
 
  featchBestSellerBooks() async {
    emit(BestSellerStateLoading());
    final response = await userRepository.featchBestSellerBooks();
    response.fold(
      (errMessage) => emit(BestSellerStateFaluier(errMessage: errMessage)),
      (books) => emit(BestSellerStateSucces(books: books)),
    );
  }
}
