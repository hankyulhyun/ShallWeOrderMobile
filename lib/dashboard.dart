import 'package:flutter/material.dart';

class DashboardPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard Page'),
      ),
      body: Center(
        child: Text('Dashboard Content'),
      ),
    );
  }
}
