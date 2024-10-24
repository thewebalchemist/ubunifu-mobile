import 'package:flutter/material.dart';
import 'package:myapp/widgets/custom-appbar.dart';

class CoursePage extends StatelessWidget {
  final String courseTitle;

  const CoursePage({Key? key, required this.courseTitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: courseTitle),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              courseTitle,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            SizedBox(height: 20),
            Text(
              'Course Outline:',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            SizedBox(height: 10),
            _buildCourseOutline(courseTitle),
          ],
        ),
      ),
    );
  }

  Widget _buildCourseOutline(String course) {
    List<String> outline;
    switch (course) {
      case 'Design Art':
        outline = ['Color Theory', 'Typography', 'Layout Design', 'Digital Illustration'];
        break;
      case 'Programming':
        outline = ['Basic Syntax', 'Data Structures', 'Algorithms', 'Object-Oriented Programming'];
        break;
      case 'Mathematics':
        outline = ['Algebra', 'Geometry', 'Calculus', 'Statistics'];
        break;
      case 'Physics':
        outline = ['Mechanics', 'Thermodynamics', 'Electromagnetism', 'Quantum Physics'];
        break;
      case 'App Development':
        outline = ['Flutter', 'Widgets', 'Firebase', 'Play Store'];
        break;
      default:
        outline = ['Introduction', 'Core Concepts', 'Advanced Topics', 'Practical Applications'];
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: outline.map((topic) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Text('+ $topic', style: TextStyle(fontSize: 16)),
      )).toList(),
    );
  }
}