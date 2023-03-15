import 'package:flutter/material.dart';
import 'package:project_dd/hotel_recommendations/mainpage.dart';

void main() {
  runApp(const RecommendationScreen());
}

class RecommendationScreen extends StatefulWidget {
  const RecommendationScreen({super.key});

  @override
  State<RecommendationScreen> createState() => _RecommendationScreenState();
}

class _RecommendationScreenState extends State<RecommendationScreen> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: SafeArea(child: Mainpageclass()),
      ),
    );
  }
}
