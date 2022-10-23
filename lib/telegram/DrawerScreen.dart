import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tugas/main.dart';

class DrawerScreen extends StatefulWidget {
  @override 
  _DrawerScreenState createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override 
  Widget build(BuildContext) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text("Farhan Hilmy Arwanto"),
            currentAccountPicture: CircleAvatar(
              backgroundImage:AssetImage("assets/Farhan.jpeg") //belum masukin image
            ),
            accountEmail: Text("farhan04@gmail.com"),
          ),
          DrawerListTile(
            iconData: Icons.group,
            title: "New Group",
            onTilePressed: (){},
          ),
          DrawerListTile(
            iconData: Icons.lock,
            title: "New Secret Group",
            onTilePressed: (){},
          ),
          DrawerListTile(
            iconData: Icons.notifications,
            title: "New Channel Chat",
            onTilePressed: (){},
          ),
          DrawerListTile(
            iconData: Icons.contacts,
            title: "Contacts",
            onTilePressed: (){},
          ),
          DrawerListTile(
            iconData: Icons.bookmark_border,
            title: "Saved Message",
            onTilePressed: (){},
          ),
          DrawerListTile(
            iconData: Icons.logout,
            title: "Logout",
            onTilePressed: (){Route route = MaterialPageRoute(builder: (context) => MyApp());
                   Navigator.push(context, route);},
            
          )
        ]
      )
    );
  }
}

class DrawerListTile extends StatelessWidget {
  final IconData iconData;
  final String title;
  final VoidCallback onTilePressed;

  const DrawerListTile({Key? key, required this.iconData, required this.title, required this.onTilePressed})
  :super(key:key);
  @override 
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTilePressed,
      dense: true,
      leading: Icon(iconData),
      title: Text(title, style: TextStyle(fontSize: 16),),
    );
  }
  }