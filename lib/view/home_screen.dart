import 'package:api_practice_course/view/photos_api_screen.dart';
import 'package:api_practice_course/view/text_api_screen.dart';
import 'package:api_practice_course/view/users_api_screen.dart';
import 'package:api_practice_course/view/without_model_api_calls_screen.dart';
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              HomeScreenWidget(
                  color: Colors.blueGrey.shade100,
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const TextAPIScreen()));
                  },
                  buttonText: 'Text Api'),
              const SizedBox(height: 20),
              HomeScreenWidget(
                  color: Colors.grey,
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const PhotosAPIScreen()));
                  },
                  buttonText: 'Photos Api'),
              const SizedBox(height: 20),
              HomeScreenWidget(
                  color: Colors.yellow.shade100,
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const UsersApiScreen()));
                  },
                  buttonText: 'Users API'),
              const SizedBox(height: 20),
              HomeScreenWidget(
                  color: Colors.greenAccent.shade100,
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const WithoutModelApiCallsScreen()));
                  },
                  buttonText: 'Model Less Calls'),
            ],
          ),
        ),
      ),
    );
  }
}
