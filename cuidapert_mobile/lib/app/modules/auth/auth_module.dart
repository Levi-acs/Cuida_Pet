import 'package:cuidapet_mobile/app/modules/auth/home/auth_home_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AuthModule extends Module {

   @override
   void binds(Injector i) {
   }
   

   @override
   void routes(RouteManager r) {
    r.child(Modular.initialRoute, child: (context) => const AuthHomePage());
   }

}