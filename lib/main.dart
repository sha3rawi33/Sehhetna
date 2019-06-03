import 'package:flutter/material.dart';
import 'package:healthy_wealthy/loginScreen.dart';
import 'package:healthy_wealthy/home.dart';
import 'package:healthy_wealthy/profile/profile.dart';
import 'package:healthy_wealthy/splash/splashScreen.dart';
import 'package:healthy_wealthy/near_hospital/nearHospital.dart';
import 'package:healthy_wealthy/emergency.dart';
import 'package:healthy_wealthy/donate.dart';
import 'package:healthy_wealthy/alerts.dart';
import 'package:healthy_wealthy/splash/ambulance.dart';
import 'package:healthy_wealthy/history.dart';
import 'package:healthy_wealthy/support.dart';

void main() {
  runApp(MaterialApp(
    title: "Healthy Wealthy",
    home: SplashScreen(),
    routes: {
      'home': (context) => NearHospital(),
      'profile': (context) => ProfilePage(),
      'logout': (context) => LoginScreen(),
      'splash': (context) => SplashScreen(),
      'login': (context) => LoginScreen(),
      'dashboard': (context) => DashboardPage(),
      'emergency': (context) => DashboardScreen(),
      'donate': (context) => DonateDashboard(),
      'alerts': (context) => AlertsDashboard(),
      'ambulance': (context) => EmergencyDashboard(),
      'history': (context) => MedicalHistoryDashboard(),
      'support': (context) => SupportPage()
    },
  ));
}
