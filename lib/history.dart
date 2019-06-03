import 'package:flutter/material.dart';

class MedicalHistoryDashboard extends StatefulWidget {
  @override
  _MedicalHistoryDashboardState createState() =>
      _MedicalHistoryDashboardState();
}

class _MedicalHistoryDashboardState extends State<MedicalHistoryDashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEEEEEE),
      appBar: AppBar(
        title: Text("Medical History"),
        backgroundColor: Colors.teal,
        elevation: 0.0,
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text("Your Medical History", style: TextStyle(fontSize: 22.0,),),
          ),
          _buildMedicalHistoryCard(hospitalName: "Benha Hospital", appointmentDate: "19/02/18", medicalNote: "Mild Fever and Cold"),
          _buildMedicalHistoryCard(hospitalName: "Cairo Hospital", appointmentDate: "19/02/18", medicalNote: "Dengue Fever detected. Low platelet count. Medicines include: ABC, XYZ"),
          _buildMedicalHistoryCard(hospitalName: "Souad Kafafi", appointmentDate: "19/02/18", medicalNote: "Mild Fever and Cold"),
        ],
      ),
    );
  }

  Widget _buildMedicalHistoryCard({String hospitalName, String appointmentDate, String medicalNote}) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(hospitalName, style: TextStyle(color: Colors.black, fontSize: 22.0),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(appointmentDate, style: TextStyle(fontSize: 18.0),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(medicalNote),
            ),
          ],
        ),
      ),
    );
  }

}
