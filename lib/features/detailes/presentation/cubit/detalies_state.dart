part of 'detalies_cubit.dart';

sealed class DetaliesState extends Equatable {
  const DetaliesState();

  @override
  List<Object> get props => [];
}

final class DetaliesInitial extends DetaliesState {}
final class DetailsLoading extends DetaliesState {}
final class DetailsSuccess extends DetaliesState {
  final List< BookModel> books;

 const DetailsSuccess({required this.books});
}
final class DetailsFaluier extends DetaliesState {
  final String massege;

 const DetailsFaluier({required this.massege, required });
}


