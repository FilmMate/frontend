import 'package:film_mate/core/di/injectable.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

final getIt = GetIt.instance;

@InjectableInit()
Future<void> configureInjectable() async {
  getIt.init(environment: Environment.prod);
}
