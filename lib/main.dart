import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:isee/app/routes/app_pages.dart';

import 'app/utils/dependency_injection.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  String _routeName = await DependencyInjection.getInitialRoute();
  DependencyInjection.init();
  runApp(MyApp(routeName: _routeName,));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  MyApp({@required String routeName})
      : assert(routeName != null),
        _routeName = routeName;
  final String _routeName;
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'iSee',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: _routeName,
      getPages: AppPages().getPages(_routeName),

    );
  }
}



