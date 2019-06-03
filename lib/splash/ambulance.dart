import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class EmergencyDashboard extends StatefulWidget {
  @override
  _EmergencyDashboardState createState() => _EmergencyDashboardState();
}

class _EmergencyDashboardState extends State<EmergencyDashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEEEEEE),
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.red,
        title: Text("EMERGENCY"),
      ),
      body: Column(
        children: <Widget>[
          _buildEmergencyOptions(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Here is a list of hospitals around you", style: TextStyle(color: Colors.black, fontSize: 18.0),),
          ),
          _buildHospitalList(),
        ],
      ),
    );
  }

  Widget _buildEmergencyOptions() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        color: Colors.red,
        child: InkWell(
          child: Padding(
            padding: const EdgeInsets.all(32.0),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Icon(
                    FontAwesomeIcons.ambulance,
                    size: 40.0,
                    color: Colors.white,
                  ),
                  flex: 1,
                ),
                Expanded(
                  child: Center(
                      child: Text(
                        "Call an ambulance \nto your location",
                        style: TextStyle(fontSize: 20.0, color: Colors.white),
                      )),
                  flex: 3,
                )
              ],
            ),
          ),
          onTap: () {

          },
        ),
      ),
    );
  }

  Widget _buildHospitalList() {
    return ListView(
      children: <Widget>[
        _buildHospitalCard("Souad kafafi Hospital","+201116913242", "26 July cordor"),
        _buildHospitalCard("Ahmed Saad Hospital","+201116913242", "26 July cordor"),
        _buildHospitalCard("Mohamed Hesham Hospital","+201116913242", "26 July cordor"),
      ],
      shrinkWrap: true,
    );
  }

  Widget _buildHospitalCard(String hospitalName,String number, String address) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(hospitalName, style: TextStyle(fontSize: 22.0,),),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(number, style: TextStyle(fontSize: 16.0),),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(address, style: TextStyle(fontSize: 16.0),),
              ),
            ],
          ),
        ),
      ),
    );
  }

}
