import 'package:bloc/bloc.dart';
import 'package:bookapp/features/home/presentation/cubit/user_state.dart';
import 'package:bookapp/core/repositories/user_repository.dart';


class UserCubit extends Cubit<UserState> {
  UserCubit(this.userRepository) : super(UserInitial());
  final UserRepository userRepository;
  
 
  featchNewsBooksData() async {
    emit(FeuteredBooksLoading());
    final response = await userRepository.featchNewsBooks();
    response.fold(
      (errMessage) => emit(FeuteredBooksFaluier(errMessage: errMessage)),
      (user) => emit(FeuteredBooksSucces(books: user)),
    );
  }
}
