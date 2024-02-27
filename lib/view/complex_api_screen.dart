import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ComplexApiScreen extends StatefulWidget {
  const ComplexApiScreen({super.key});

  @override
  State<ComplexApiScreen> createState() => _ComplexApiScreenState();
}

class _ComplexApiScreenState extends State<ComplexApiScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow.shade100,
        centerTitle: true,
        title: const Text('Complex Api Screen',
            style: TextStyle(color: Colors.blue)),
      ),
    );
  }
}
