import 'package:flutter/material.dart';
import 'package:shall_we_order_mobile/create_order.dart';

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
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (_) {
            return CreateOrderPage();
          }));
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
