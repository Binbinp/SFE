import 'package:flutter/material.dart';
import 'package:new_project/Screens/Assessment/Course_Assessment.dart';
import 'package:new_project/Screens/Assessment/Faculty_Assessment.dart';
import 'package:new_project/Screens/Assessment/Overall_Screen.dart';
import 'package:new_project/Screens/Homepage/Homepage.dart'; // Assuming this is the homepage screen file

class AdmissionScreen extends StatelessWidget {
  const AdmissionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AdmissionMenuScreen(),
    );
  }
}

class AdmissionMenuScreen extends StatelessWidget {
  const AdmissionMenuScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          'SFE RESULTS',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        centerTitle: true, // Center the title
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => const HomePage(),
              ),
            );
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 10.0),
            _buildMenuItem(
              'Course Assessment Result',
              Icons.arrow_forward_ios,
                  () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const CourseAssessmentScreen(),
                ),
              ),
            ),
            const SizedBox(height: 10.0),
            _buildMenuItem(
              'Faculty Assessment Result',
              Icons.arrow_forward_ios,
                  () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const FacultyAssessmentScreen(),
                ),
              ),
            ),
            const SizedBox(height: 10.0),
            _buildMenuItem(
              'Overall Result',
              Icons.arrow_forward_ios,
                  () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const OverallScreen(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMenuItem(String title, IconData icon, VoidCallback onTap) {
    return Card(
      margin: const EdgeInsets.all(5.0), // Adjust the margin as needed
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      elevation: 5, // Adjust the elevation for shadow depth
      child: ListTile(
        title: Text(
          title,
          style: const TextStyle(
            fontSize: 18,
            color: Colors.black,
          ),
        ),
        trailing: Icon(icon),
        onTap: onTap,
        contentPadding:
        const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      ),
    );
  }
}
