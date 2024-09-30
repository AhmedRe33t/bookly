import 'package:bookapp/core/api/dio_consumer.dart';
import 'package:bookapp/core/repositories/user_repository.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt=GetIt.instance;

void setUp(){
  getIt.registerSingleton<DioConsumer>(DioConsumer(dio: Dio()));
  getIt.registerSingleton<UserRepository>(UserRepository(api: getIt.get<DioConsumer>()));
}