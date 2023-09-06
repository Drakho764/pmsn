import 'package:day_night_switcher/day_night_switcher.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatefulWidget{
  DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  bool isDarkModeEnabled = true;

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Bienvenidos:)'),
      ),
      drawer: createDrawer(),
    );
  }

  Widget createDrawer(){
    return Drawer(
      child:ListView(
        children: [
         const UserAccountsDrawerHeader(
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage('https://i.pravatar.cc/300')
              ),
            accountName: Text('Paquirrito'),
            accountEmail: Text('paqui@gmail.com')
          ),
          ListTile(
            leading:Image.network('https://cdn3.iconfinder.com/data/icons/street-food-and-food-trucker-1/64/fruit-organic-plant-orange-vitamin-64.png'),
             //Image.asset('assets/naranja.png'),
            trailing: Icon(Icons.chevron_right),
            title: Text('FruitApp'),
            subtitle: Text('Carrusel') ,
            onTap: (){},
          ),
          DayNightSwitcher(
            isDarkModeEnabled: isDarkModeEnabled,
            onStateChanged: (isDarkModeEnabled) {
            setState(() {
              this.isDarkModeEnabled = isDarkModeEnabled;
            });
            },
          ),
        ],
      ),
    );
  }
}