import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  // ignore: unused_element
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          ListTile(
            title: Text(
              'Page home',
              style: TextStyle(
                  color: Color.fromARGB(255, 58, 144, 214), fontSize: 18),
            ),
            leading: Icon(
              Icons.home,
              color: Colors.blue,
              size: 25,
            ),
            onTap: () {
              Navigator.of(context).pushNamed('homepage');
            },
          ),
          ListTile(
            title: Text(
              'Admin',
              style: TextStyle(
                  color: Color.fromARGB(255, 58, 144, 214), fontSize: 18),
            ),
            leading: Icon(Icons.man, color: Colors.blue, size: 25),
            onTap: () {
              Navigator.of(context).pushNamed('Admin');
            },
          ),
          ListTile(
            title: Text(
              'Femmes Enceintes',
              style: TextStyle(
                  color: Color.fromARGB(255, 58, 144, 214), fontSize: 18),
            ),
            leading: Icon(
              Icons.pregnant_woman,
              color: Colors.blue,
              size: 25,
            ),
            onTap: () {
              Navigator.of(context).pushNamed('Femme');
            },
          ),
          ListTile(
            title: Text(
              'SMS Medecine ',
              style: TextStyle(
                  color: Color.fromARGB(255, 58, 144, 214), fontSize: 18),
            ),
            leading: Icon(Icons.add_moderator, color: Colors.blue, size: 25),
            onTap: () {
              Navigator.of(context).pushNamed('SmsMedecine');
            },
          ),
           ListTile(
            title: Text(
              'Se Deconnecter ',
              style: TextStyle(
                  color: Color.fromARGB(255, 58, 144, 214), fontSize: 18),
            ),
            leading: Icon(Icons.logout, color: Colors.blue, size: 25),
            onTap: () {
              Navigator.of(context).pushNamed('login');
            },
          ),
        ],
      ),
    );
  }
}
