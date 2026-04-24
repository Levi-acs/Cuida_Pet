import 'package:cuidapet_mobile/app/core/local_storage/local_storage.dart';
import 'package:cuidapet_mobile/app/core/local_storage/shared_preference/shared_preference_local_storage_impl.dart';
import 'package:cuidapet_mobile/app/core/logger/app_logger.dart';
import 'package:cuidapet_mobile/app/core/logger/logger_app_logger_impl.dart';
import 'package:cuidapet_mobile/app/core/rest_client/dio/dio_rest_client.dart';
import 'package:cuidapet_mobile/app/core/rest_client/rest_client.dart';
import 'package:cuidapet_mobile/app/modules/core/auth/auth_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

class CoreModule extends Module {
  @override
  void exportedBinds(Injector i) {
    i.addSingleton(() => AuthStore());
    i.addSingleton<RestClient>(() => DioRestClient());
    i.addSingleton<AppLogger>(() => LoggerAppLoggerImpl());
    i.addSingleton<LocalStorage>(() => SharedPreferenceLocalStorageImpl());
  }
}
