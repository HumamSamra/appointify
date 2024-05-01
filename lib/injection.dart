import 'package:appointment/core/services/storage_service.dart';
import 'package:appointment/injection.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

final getIt = GetIt.instance;

@InjectableInit(
  initializerName: 'init', // default
  preferRelativeImports: true, // default
  asExtension: true, // default
)
Future<void> configureDependencies() async {
  getIt.registerSingleton<StorageService>(await StorageService.init());
  getIt.init();
}
