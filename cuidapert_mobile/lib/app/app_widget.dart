import 'package:asuka/asuka.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppWidget extends StatelessWidget {

  const AppWidget({ super.key });

  @override
  Widget build(BuildContext context) {
    
      Modular.setInitialRoute('/auth');
      Modular.setObservers([Asuka.asukaHeroController,]);

    return ScreenUtilInit(
      designSize: const Size(360, 690),
      builder: (context, child) => MaterialApp.router(
        builder: Asuka.builder,
        title: 'Cuidapet',
        theme: ThemeData(
          primarySwatch: Colors.blue),
      
          routerConfig: Modular.routerConfig,
      ),
    ) ;
  }
}

