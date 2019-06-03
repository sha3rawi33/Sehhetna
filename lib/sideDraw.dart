import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SideDraw extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.indigo,
            ),
            child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, 'profile');
              },
              child: Column(
            children: <Widget>[
            Container(
              height: 113,
              width: 113,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: const Color(0xff7c94b6),
                image: DecorationImage(
                  image: ExactAssetImage('assets/profilepic.jpg'),
                  fit: BoxFit.cover,
                ),
                border: Border.all(
                  color: Colors.white,
                  width: 2.0,
                ),
              ),
            ),
      SizedBox(height: 8),
      Text(
        'Ahmed Saad Sharawi',
        style: TextStyle(
            color: Colors.white, fontWeight: FontWeight.bold),
      )
      ],
    ),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.home,
              size: 40,
              color: Colors.indigo,
            ),
            title: Text("Home"),
            subtitle: Text("The Home Page of this application."),
            onTap: () {
              Navigator.pushNamed(context, 'dashboard');
            },
          ),
          ListTile(
            leading: Icon(
              Icons.person,
              size: 40,
              color: Colors.indigo,
            ),
            title: Text("Profile"),
            subtitle: Text("Check Your Profile and health details."),
            onTap: () {
              Navigator.pushNamed(context, 'profile');
            },
          ),
          ListTile(
            leading: Icon(
              Icons.announcement,
              size: 40,
              color: Colors.red.shade600,
            ),
            title: Text(
              "EMERGENCY || BLOOD",
              style: TextStyle(fontWeight: FontWeight.w900, color: Colors.red),
            ),
            subtitle: Text("Help people near you!", style: TextStyle(color: Colors.red),),
            onTap: () {
              Navigator.pushReplacementNamed(context, 'emergency');
            },
          ),
          ListTile(
            leading: Icon(
              Icons.local_hospital,
              size: 40,
              color: Colors.indigo,
            ),
            title: Text("Nearest Hospital"),
            subtitle: Text("Reach the nearest hospital to you."),
            onTap: () {
              Navigator.pushNamed(context, 'home');
            },
          ),
          ListTile(
            leading: Icon(
              FontAwesomeIcons.ambulance,
              size: 40,
              color: Colors.indigo,
            ),
            title: Text("Call Ambulance"),
            subtitle: Text("For Urgent actions."),
            onTap: () {
              Navigator.pushNamed(context, 'ambulance');
            },
          ),
          ListTile(
            leading: Icon(
              Icons.library_books,
              size: 40,
              color: Colors.indigo,
            ),
            title: Text("Medical Profile"),
            subtitle: Text("All details about you."),
            onTap: () {
              Navigator.pushNamed(context, 'history');
            },
          ),
          ListTile(
            leading: Icon(
              Icons.backspace,
              size: 40,
              color: Colors.indigo,
            ),
            title: Text("Log Out"),
            subtitle: Text("End your session."),
            onTap: () {
              Navigator.pushNamed(context, 'splash');
            },
          ),
        ],
      ),
    );
  }
}
