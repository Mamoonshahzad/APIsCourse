import 'package:api_practice_course/view/get_apis/get_apis_categories_screen.dart';
import 'package:api_practice_course/view/get_apis/photos_api_screen.dart';
import 'package:api_practice_course/view/get_apis/text_api_screen.dart';
import 'package:api_practice_course/view/get_apis/users_api_screen.dart';
import 'package:api_practice_course/view/get_apis/without_model_api_calls_screen.dart';
import 'package:api_practice_course/widgets/home_screen_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow.shade100,
        centerTitle: true,
        title: const Text('Home Screen', style: TextStyle(color: Colors.blue)),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                HomeScreenWidget(
                    color: Colors.black54,
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const GetAPIsCategoriesScreen())),
                    buttonText: "Get APIs"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
