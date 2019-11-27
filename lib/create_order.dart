
import 'package:flutter/material.dart';

class CreateOrderPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _CreateOrderPageState();
}

class _CreateOrderPageState extends State<CreateOrderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create Order Page'),
      ),
      body: Center(
        child: Text('Create Order Content'),
      ),
    );
  }
}
