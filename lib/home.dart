import 'package:flutter/material.dart';
import 'package:healthy_wealthy/sideDraw.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class DashboardPage extends StatefulWidget {
  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SideDraw(),
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "Healthy Wealthy",

          style: TextStyle(
              color: Colors.white, fontSize: 22.0),
        ),
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.pink,
      ),
      body: GridView(
        gridDelegate:
        SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        children: <Widget>[
          _buildCard("Donate Blood || Urgent!", Icons.new_releases, Colors.red, onTap: (){Navigator.of(context).pushReplacementNamed("emergency");}),
          _buildCard("Request Blood", Icons.add, Colors.red, onTap: (){}),
          _buildCard("Nearest Hospital", Icons.local_hospital, Colors.blue, onTap: (){Navigator.of(context).pushNamed("home");}),
          _buildCard("Governmental Alerts", Icons.healing, Colors.orange, onTap: (){Navigator.of(context).pushNamed("alerts");}),
          _buildCard("Ambulance", FontAwesomeIcons.ambulance, Colors.teal, onTap: (){Navigator.of(context).pushNamed("ambulance");}),
          _buildCard("Donate", Icons.attach_money, Colors.green, onTap: (){Navigator.of(context).pushNamed("donate");}),
          _buildCard("Medical History", Icons.library_books, Colors.deepPurpleAccent, onTap: (){Navigator.of(context).pushNamed("history");}),
          _buildCard("Ask A doctor", Icons.chat, Colors.indigo, onTap: (){Navigator.of(context).pushNamed("support");}),

        ],
      ),
    );
  }

  Widget _buildCard(String title, IconData icon, Color backgroundColor, {GestureTapCallback onTap}) {

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 4.0,
        color: backgroundColor,
        child: InkWell(
          onTap: onTap,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Icon(icon, size: 50.0, color: Colors.white,),
              Text(title, style: TextStyle(fontSize: 16.0, color: Colors.white, fontWeight: FontWeight.bold),),
            ],
          ),
        ),
      ),
    );
  }
}
