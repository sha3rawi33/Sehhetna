import 'package:flutter/material.dart';

class AlertsDashboard extends StatefulWidget {
  @override
  _AlertsDashboardState createState() => _AlertsDashboardState();
}

class _AlertsDashboardState extends State<AlertsDashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEEEEEE),
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Alerts"),
      ),
      body: ListView(
        children: <Widget>[
          _buildAlertCard("Health agency", "Dengue fever spreads in Cairo"),
          _buildAlertCard("Government of Egypt", "Free vaccinations available at PHCs"),
          _buildAlertCard("Government of Egypt", "Avail government healthcare scheme"),
          _buildAlertCard("Government of Egypt", "Avail government healthcare scheme"),
          _buildAlertCard("Government of Egypt", "Avail government healthcare scheme"),
          _buildAlertCard("Government of Egypt", "Avail government healthcare scheme"),
        ],
      ),
    );
  }

  Widget _buildAlertCard(String agency, String alertText) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(agency),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 16.0),
                child: Text(alertText, style: TextStyle(color: Colors.black, fontSize: 18.0),),
              )
            ],
          ),
        ),
      ),
    );
  }

}


