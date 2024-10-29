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
            SizedBox(height: 10),
            Text(
              'Contents:',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            SizedBox(height: 10),
            _buildCourseContent(courseTitle)
          ],
        ),
      ),
    );
  }

  Widget _buildCourseOutline(String course) {
    List<String> outline;
    switch (course) {
      case 'Design Art':
        outline = [
          'Color Theory',
          'Typography',
          'Layout Design',
          'Digital Illustration'
        ];
        break;
      case 'Programming':
        outline = [
          'Basic Syntax',
          'Data Structures',
          'Algorithms',
          'Object-Oriented Programming'
        ];
        break;
      case 'Mathematics':
        outline = ['Algebra', 'Geometry', 'Calculus', 'Statistics'];
        break;
      case 'Physics':
        outline = [
          'Mechanics',
          'Thermodynamics',
          'Electromagnetism',
          'Quantum Physics'
        ];
        break;
      case 'App Development':
        outline = ['Flutter', 'Widgets', 'Firebase', 'Play Store'];
        break;
      default:
        outline = [
          'Introduction',
          'Core Concepts',
          'Advanced Topics',
          'Practical Applications'
        ];
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: outline
          .map((topic) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Text('+ $topic', style: TextStyle(fontSize: 16)),
              ))
          .toList(),
    );
  }

  Widget _buildCourseContent(courseTitle) {
    List<String> courseContent;
    switch (courseTitle) {
      case 'Design Art':
        courseContent = ['This is the design art course contents, This is the design art course contents, This is the design art course contents'];
        break;
      case 'Programming':
        courseContent = ['This is the programing course contents'];
        break;

      case 'Mathematics':
        courseContent = ['This is the mathematics course contents'];
        break;

      case 'Physics':
        courseContent = ['This is the physics course contents'];
        break;

      case 'App Development':
        courseContent = ['This is the app development course contents'];
        break;

      default:
        courseContent = ['This is the design art course contents'];
        break;
    }

    return (Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: courseContent
            .map((content) =>
                Padding(padding: EdgeInsets.all(4), 
                child: Text(
                  content,
                  style: TextStyle(
                    fontSize: 20,
                    
                  )
                )))
            .toList()));
  }
}
