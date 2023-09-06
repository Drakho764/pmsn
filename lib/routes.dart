import 'package:flutter/widgets.dart';
import 'package:pmsn/screens/dashboard_screen.dart';

Map<String,WidgetBuilder> getRoutes(){
  return{
    '/dash': (BuildContext context) => DashboardScreen()
  };
}